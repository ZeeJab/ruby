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
animals = []
farms = []

puts "do you want to have fun and create some farms? (y)es or (n)o"
response = gets.chomp

while response != "n"

	puts "What do you want to name your farm?"
	name_farm = gets.chomp
	farms << Farm.new(name_farm)
	puts "do you want to create more farms? (y)es or (n)o"
    response = gets.chomp

 end

user_prompt = "Please create (p)eople and (a)nimals for your farms or (q)uit?"
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

		puts "These are your farms #{farms}, please select a farm to assign this person to"
		farm_choice = gets.chomp.downcase

		(0..(farms.length-1)).each do |i|
			if farms[i].name == farm_choice
			farms[i].people << Person.new(name_person, age, gender_person)
			end
		end

	when "a"
		puts "What do you want to name your animal?"
		name_animal = gets.chomp
		puts "What species is your animal?"
		species = gets.to_s
		puts "Is your animal (male) or (female)?"
		gender_animal = gets.chomp.downcase
		animals << Animal.new(name_animal, species, gender_animal)

		puts "These are your farms #{farms}, please select a farm to assign this animal to"
		farm_choice = gets.chomp.downcase

		(0..(farms.length-1)).each do |i|
			if farms[i].name == farm_choice
			farms[i].animal << Animal.new(name_animal, species, gender_animal)
			end
		end
	end

	puts "Create more (p)eople, (a)nimals or (q)uit?"
	user_choice = gets.chomp.downcase

end



if user_choice == "q"
	puts "Thank you for using our awesome Animal Farm app, now ef off!"
	puts "farms #{farms}"
	puts "people #{people}"
	puts "animals #{animals}"
	puts "your farms people #{farms.people}"
	puts "your farms animals #{farms.animals}"
end







