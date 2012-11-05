require 'pry'

puts "Calculate trip, (y)es or (n)o?"
response = gets.chomp

def cash_left(miles, mpg, price, money, speed)
	fuel_used = miles / mpg
	puts "#{fuel_used} gallons"
	cost_of_trip = fuel_used * price
	puts "#{cost_of_trip} dollars"
	cash_left = money - cost_of_trip
	puts "#{cash_left} dollars left"
	time_of_trip = miles / speed #this gives you hours
	puts "#{time_of_trip} hours for trip"

	if cash_left > money
		puts "You don't have enough money for trip, time of trip is #{time_of_trip}."
	else
		puts "You have $#{cash_left} and you arrive in #{time_of_trip}"
	end
end

while response != "n"
	puts "How far they are going?"
	miles = gets.to_f
	puts "How fast they are going?"
	speed = gets.to_f
	puts "How much is gas per gallon?"
	price = gets.to_f
	puts "What is the MPG of their car?"
	mpg = gets.to_f
	puts "How much money do you have?"
	money = gets.to_f

	cash = cash_left(miles, mpg, price, money, speed)

	puts "Calculate trip, (y)es or (n)o?"
	response = gets.chomp

end








