require 'pry'
class Person
	attr_accessor :name, :gender, :age 
	
	def initialize(n, g, a) 
		@name = n 
		@gender = g 
		@age = a
	end

	def to_s
		"#{name} is a #{gender}, and #{age} years old." 
	end
end

people = []

puts "Would you like to create a (p)erson or (q)uit?"
response = gets.chomp.downcase

while response != "q"
	puts "What is your name?"
	name = gets.chomp

	puts "What is your age?"
	age = gets.chomp

	puts "What is your gender?"
	gender = gets.chomp

	people << Person.new(name, gender, age)

	puts "Would you like to create a (p)erson or (q)uit?"
	response = gets.chomp.downcase
end

if response == "q"
	puts "Goodbye!!"
end

puts "Below are the stored people in your database:"
puts people
