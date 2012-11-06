require 'pry'

load 'person.rb'
load 'animal.rb'
load 'farm.rb'

people = []
animal = []
farm = []

puts "Do you want to create farms (y)es or (n)o?"
response = gets.chomp


while response != "n"
	puts "Please enter farm name: "
	name_farm = gets.chomp
	farm << Farm.new(name_farm)

	binding.pry

	puts "Do you want to create more farms (y)es or (n)o?"
	response = gets.chomp
end

puts "Do you want to add (p)eople or (a)nimals to your farm or (q)uit?"
answer = gets.chomp


while answer != "q"

	case answer
	when "p"
		puts "Please select the farm you want to add people to \n#{farm}?"
		farm_choice = gets.chomp

		puts "What do you want to name your person?"
		name_person = gets.chomp
		puts "How old is this person in years?"
		age = gets.to_i
		puts "Is this person (male) or (female)?"
		gender_person = gets.chomp.downcase
		people << Person.new(name_person, age, gender_person)

	end


	puts "Do you want to create more farms (y)es or (n)o?"
	response = gets.chomp
end


