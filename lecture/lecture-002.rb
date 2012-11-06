require 'pry'

colors = ['blue', 'green', 'yellow']

puts "Enter a new color:"
color = gets.chomp
colors << color

person = {}
puts "Last name?"
person[:last] = gets.chomp #the key always goes inside the brackets
#you always wanna use something very unique as the key
puts "First name?"
person[:first] = gets.chomp
puts "Age?"
person[:age] = gets.chomp

# enumerables THROUGH ARRAYS -- it goes through all the colors -- this is a loop
colors.each do |color| #it goes through each thing in your array one at a time
	#|color| is a local variable
	#arrays always have a plural name and the local variable has a singular name
	puts "The color is #{color}" #when there are no more colors in the array, its done
end

(1..100).each do |x|
	puts "the number is: #{x}"
end

# (1..100).each do |x|
# 	puts "the square of the number is: #{x*x}"
# end

# (1..100).each do |x|
# 	puts "the power of the number is: #{x**x}"
# end


#enumerables THROUGH HASHES
person.each do |key, value| #so your local variables get a key and a value
	puts "the key is #{key} and value is #{value}"
end


binding.pry