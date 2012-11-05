require 'pry'

def cost(distance, mpg, price)
	distance / mpg * price
end

def distance (distance, mph)
	distance / mph
end

def trip_calculator(distance, mph, price, mpg, money)

	total_cost = cost(distance, mpg, price)
	total_time = distance(distance, mph) 
	money_remaining = money - total_cost
	results = [money_remaining, total_time]

	if money >= total_cost
		puts "You will have $#{(money - total_cost).round(2)} when you arrive in #{total_time.round(1)} hours. "
	else
		puts "Sorry, you do not have enough money for the trip. Try public transportation."
	end
end

puts "Do you want to calculate your trip? (y)es or (n)o?"
response = gets.chomp

while response != "n"
	puts "How far are you going (miles)?"
		distance = gets.to_f
		puts "How fast are you going (miles per hour)?"
		mph = gets.to_f
		puts "How much is gas per gallon?" 
		price = gets.to_f
		puts "What is the MPG of your car?" 
		mpg = gets.to_f
		puts "How much money they have?" 
		money = gets.to_f

		puts "Gas Start Price?"
		gas_start = gets.to_f
		puts "Gas Stop Price?"
		gas_stop = gets.to_f

		(gas_start..gas_stop).step(0.10) do |price|
			trip_calculator(distance, mph, price, mpg, money)
			puts "This is your gas price #{price}"
		end

		#results = trip_calculator(distance, mph, price, mpg, money)
		
		puts "Do you want to calculate your trip? (y)es or (n)o?"
		response = gets.chomp
end

if response == "n"
	puts "goodbye!"
end




# while response != "n"
 	
# 	trip_calculator(distance, mph, price, mpg, money)

# end

# if response == "n"
# 	puts "goodbye!"
# end



