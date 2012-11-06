require 'pry'

n_stops = %w{times\ square 34th 28th 23rd union\ square}
l_stops = %w{8th 6th union\ square 3rd 1st }
six_stops = %w{grand\ central 33rd 28th 23rd union\ square}

puts "Which subway are you taking? (N), (L), (6) or (Q)uit"
train = gets.chomp.upcase

while train != "Q"

	puts "What's your starting Station?"
	start = gets.chomp
	puts "What's your ending Station?"
	ending = gets.chomp

	case train
	when "N"
		puts "It will take #{(n_stops.index(start) - n_stops.index(ending)).abs} stops to your destination."
	when "L"
		puts "It will take #{(l_stops.index(start) - l_stops.index(ending)).abs} stops to your destination."
	when "6"
		puts "It will take #{(six_stops.index(start) - six_stops.index(ending)).abs} stops to your destination."
	else
		puts "Our system does not support that train. Sorry!"
	end

	puts "What subway are you taking? (N), (L), (6) or (Q)uit"
	train = gets.chomp.upcase

end
















































