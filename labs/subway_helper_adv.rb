require 'pry'

def transfer_route(arr1, start, arr2, ending)
	a = (arr1.index(start) - arr1.index('union square')).abs
	b = (arr2.index('union square') - arr2.index(ending)).abs
	number = a + b
end

def normal_route(array, start, ending)
	distance = (array.index(start) - array.index(ending)).abs
end

n_stops = %w{times\ square 34th 28th 23rd union\ square}
l_stops = %w{8th 6th union\ square 3rd 1st }
six_stops = %w{grand\ central 33rd 28th 23rd union\ square}

puts "Would you like to know how many stops? (Y)es or (Q)uit"
input = gets.chomp.upcase

while input != "Q"

	puts "Which train are you taking? (N), (L), (6)"
	start_train = gets.chomp.upcase
	puts "What's your starting Station?"
	start = gets.chomp

	puts "Which is your second train? (N), (L), (6)"
	ending_train = gets.chomp.upcase
	puts "What's your ending Station?"
	ending = gets.chomp

	case start_train
	when "N"
		arr1 = n_stops
	when "L"
		arr1 = l_stops
	when "6"
		arr1 = six_stops
	end

	case ending_train
	when "N"
		arr2 = n_stops
	when "L"
		arr2 = l_stops
	when "6"
		arr2 = six_stops
	end

	if arr1 == arr2
		result = normal(arr1, start, ending)
		puts "It will take #{result} stops to get to your destination."
	elsif arr1 != arr2
		result = transfer(arr1, start, arr2, ending)
		puts "It will take #{result} stops to your station."
	end

	puts "Would you like to know how many stops? (Y)es or (Q)uit"
	input = gets.chomp.upcase

end


# #better way to write it
# n = ['ts', '34th', '28th-n', '23rd-n', 'us']
# l = ['8th', '6th', 'us', '3rd', '1st']
# s = ['gc', '33rd', '28th-s', '23rd-s', 'us']

# mta = {}

# mta[:n] = n
# mta[:l] = l
# mta[:s] = s

# puts "What train would you like to take: #{mta.keys.join(', ')}?"
# # mta.keys.join(', ') #pulls each element out and it joins them with a comma and a space
# #join takes an array and gives you and string
# #split takes a string and gives you an array
# start_train = gets.chomp.to_sym #changes the ansewr to a string :n which matches the n symbol we have
# puts "Which stop: #{mta[start_train].join(', ')}"
# stop_a = gets.chomp

# puts "What train would you like to take: #{mta.keys.join(', ')}?"
# stop_train = gets.chomp.to_sym 
# puts "Which stop: #{mta[stop_train].join(', ')}"
# stop_b = gets.chomp

# intersection = (mta[start_train] & mta[stop_train]).first #intersection operator

# stop_a_index = mta[start_train].index(stop_a)
# stop_a_intersection_index = mta[start_train].index(intersection)
# trip_a_length = (stop_a_index - stop_a_intersection_index).abs

# stop_b_index = mta[start_train].index(stop_b)
# stop_b_intersection_index = mta[start_train].index(intersection)
# trip_b_length = (stop_b_index - stop_b_intersection_index).abs

# total_length_of_trip = trip_a_length + trip_b_length



























