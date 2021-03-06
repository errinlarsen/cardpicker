class Card
	attr_reader :id, :game, :number, :set, :name, :text, :cost, :card_type
	@@cards = nil

	def self.all
		## cards are defined in db/*.cards.yml and
		## loaded into ALLCARDS in the load_cards.rb initializer
		@@cards ||= ALLCARDS.collect { |card| new( card )}
	end

	def self.find( param )
		all.detect { |card| card.to_param == param }
	end

  def self.find_by_game_and_id( game, id )
    all.detect { |card| card.game == game and card.id == id }
  end

  def self.find_all_by_game( game )
    all.select { |card| card.game == game }
  end

  def self.find_all_by_game_and_sets( game, sets )
    all.select { |card| card.game == game and sets.include?( card.set )}
  end

  def self.find_all_by_game_and_type( game, type )
    all.select { |card| card.game == game and card.card_type =~ /#{type}/ }
  end
    

  def self.find_all_by_game_and_type_and_sets( game, type, sets )
    all.select do |card|
      card.game == game and card.card_type =~ /#{type}/ and sets.include?( card.set )
    end
  end

  def self.find_all_sets_by_game( game )
    all.select { |card| card.game == game }.collect { |card| card.set }.uniq
  end

	def initialize( card )
		@id = card[:id]
		@game = card[:game]
		@number = card[:number]
		@set = card[:set]
		@name = card[:name]
		@text = card[:text]
		@cost = card[:cost]
		@card_type = card[:type]
	end

	def to_param
		"#{id}-#{game.gsub(/[^a-z1-9]+/i, '-')}-#{name.gsub(/[^a-z1-9]+/i, '-')}"
	end

	def type_string
	  case @card_type
  	  when 'Action' then ' A'
  	  when 'Victory' then ' V'
      when 'Action - Attack' then 'AA'
      when 'Treasure - Victory' then 'TV'
      when 'Action - Reaction' then 'AR'
  	  when 'Action - Victory' then 'AV'
    end
  end

end

