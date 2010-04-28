#!/usr/bin/env ruby
require 'yaml'

cards = YAML::load_file( 'startPlayer.cards.yml' )

cards.each do |card|
  number = card[:id]
  id = card[:number]
  card[:id] = id
  card[:number] = number
end

YAML::dump( cards, File.open( 'startPlayer.cards.yml', 'w' ))

