module CardsHelper
	def tributton_links( game )
	  links = ''
	  case game
    when 'Dominion'
      links = link_to( 'Dominion', dominion_cardpicker_path, :id => 'pressed')
      links << link_to( 'Thunderstone', thunderstone_cardpicker_path)
      links << link_to( 'Start Player', startplayer_cardpicker_path)
    when 'Thunderstone'
      links = link_to( 'Dominion', dominion_cardpicker_path)
      links << link_to( 'Thunderstone', thunderstone_cardpicker_path, :id => 'pressed')
      links << link_to( 'Start Player', startplayer_cardpicker_path)
    when 'Start Player'
      links = link_to( 'Dominion', dominion_cardpicker_path)
      links << link_to( 'Thunderstone', thunderstone_cardpicker_path)
      links << link_to( 'Start Player', startplayer_cardpicker_path, :id => 'pressed')
    end
    
    links
	end
	
end
