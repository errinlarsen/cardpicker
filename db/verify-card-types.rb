#!/usr/bin/env ruby
require 'yaml'

cards = YAML::load_file( 'dominion.cards.yml' )

cards.each { |card| puts "#{card[:name]} - #{card[:type]}" }

