require 'pry'

puts "Would you like to calculate your mortgage (y)es, (n)"
response = gets.chomp

def mortgage(r,n,p)
	top = p * (r *((1 + r) ** n))
	bottom = ((1+r)**n) -1
	c = top / bottom
end

while response != "n"
	puts "What is your Principal?"
	principal = gets.to_f
	puts "What is your loan term? How many years?"
	years = gets.to_f
	years = years * 12
	puts "What is your monthly interest rate, for example 2 percent?"
	interest = gets.to_f
	rate = interest / 100
	rate = rate / 12
	mort = mortgage(rate, years, principal)

	puts "Your monthly mortgage is #{mort}"

	puts "Would you like to calculate your mortgage (y)es, (n)"
	response = gets.chomp
end

if response == "n"
	puts "goodbye!"
end


