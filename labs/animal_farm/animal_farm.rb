# Create a person class (name, age, gender)
# prompt user to see if they want to create a person or quit
# Create an array of all of your instances of Person
# When exiting, display all the people in the array
# you'll need to create a custom to_s
require 'pry'
load 'person.rb'
load 'animal.rb'
load 'farm.rb'

people = []
animal = []
farm = []

user_prompt = "Do you want to create a (p)erson, (a)nimal, (f)arm or (q)uit?"
puts user_prompt
user_choice = gets.chomp.downcase

while user_choice != "q"

	case user_choice

	when "p"
		puts "What do you want to name your person?"
		name_person = gets.chomp
		puts "How old is this person in years?"
		age = gets.to_i
		puts "Is this person (male) or (female)?"
		gender_person = gets.chomp.downcase
		people << Person.new(name_person, age, gender_person)

	when "a"
		puts "What do you want to name your animal?"
		name_animal = gets.chomp
		puts "What species is your animal?"
		species = gets.to_s
		puts "Is your animal (male) or (female)?"
		gender_animal = gets.chomp.downcase
		animal << Animal.new(name_animal, species, gender_animal)

	when "f"
		puts "What do you want to name your farm?"
		name_farm = gets.chomp
		farm << Farm.new(name_farm)
	end

	puts user_prompt
	user_choice = gets.chomp.downcase

end

if user_choice == "q"
	puts "Thank you for using our awesome Animal Farm app, now ef off!"
	puts people
	puts animal
	puts farm
end
