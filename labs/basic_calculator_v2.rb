require 'pry'

puts "Do you want to (a)dd, (s)subtract, (m)ultiply, (d)ivide or (q)uit?"  #asking the user what they want to do?
answer = gets.chomp #chomp the answer so it gets rid of the enter

def add(number1, number2)
	number1 + number2
end

def subtract(number1, number2)
	number1 - number2
end

def multiply(number1, number2)
	number1 * number2
end

def divide(number1, number2)
	number1 / number2
end

while answer != "q"	#while you're not quitting do this loop
	puts "Enter your first number:"
	first = gets.to_i #convert it into an integer
	puts "Enter your second number:"
	second = gets.to_i #convert it into an integer

	if answer == "a"
		output = add(first, second)
		puts "Your first number: #{first} added to your second number #{second} is #{output}"
	elsif answer == "s"
		output = subtract(first, second)
		puts "Your first number: #{first} minus your second number #{second} is #{output}"
		elsif answer == "m"
		output = multiply(first, second)
		puts "Your first number: #{first} minus your second number #{second} is #{output}"
		elsif answer == "d"
		output = divide(first, second)
		puts "Your first number: #{first} minus your second number #{second} is #{output}"
	end 

	puts "Do you want to (a)dd, (s)subtract, (m)ultiply, (d)ivide or (q)uit?"  #asking the user what they want to do?
answer = gets.chomp #chomp the answer so it gets rid of the enter
end

if answer == "q"
	puts "Goodbye!"
end











