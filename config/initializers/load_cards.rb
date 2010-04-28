require 'yaml'

card_files = Dir.glob( File.join( Rails.root, 'db', '*.cards.yml' ))
ALLCARDS = card_files.collect { |file| YAML.load_file( file ) }.flatten

#ALLCARDS.each { |card| puts "#{card[:game]}: #{card[:name]}" }

