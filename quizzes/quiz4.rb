# prompt the user to enter a number
# (n)umber or (q)uit?
# then have a numbers array...
# add the numbers they add to the numbers array
# then create another array from the numbers array, where the second array
# is a square of the array created. 
# by creating a square function that you pass in a number x and you output y where y is the square root of x
# so you can call the function 
# use a .map to create a new array from the old array

require 'pry'
puts "Please enter in a (n)umber or (q)uit."
response = gets.chomp

numbers = []
numbers2 = []

def square(x)
	y = x*x
end


while response != "q"
	puts "Please enter a number!"
	n = gets.to_i
	numbers << n
	n2 = square(n)
	numbers2 << n2

	puts "These are the numbers in your array: #{numbers}"
	puts "These are the numbers in your squared array: #{numbers2}"

	puts "Please enter in a (n)umber or (q)uit."
	response = gets.chomp

end

if response == "q"
	puts "Goodbye!!"
end

