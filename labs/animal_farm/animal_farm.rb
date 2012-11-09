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
# farms = {} we're gonna use a hash instead to make it quicker to find a name rahter than a hash, so then the code ont he bottom has to change

puts "do you want to have fun and create some farms? (y)es or (n)o"
response = gets.chomp

while response != "n"

	puts "What do you want to name your farm?"
	name_farm = gets.chomp
	farms << Farm.new(name_farm) # after it becomes a hash... this becomes 
	# farm = Farm.new(name)
	# farms[name] = farm ... so you're searching for a key and its value, the key is the name, and the value is the farm objects created
	# instead of pushing it into an array, we're adding it to its respective key.
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

		# based on the code bellow the above should be person << Person.new(name, age, gender)
		puts "These are your farms #{farms}, please select a farm to assign this person to"
		farm_choice = gets.chomp.downcase

		# farms.map {|f| f.name}.join(', ')	#its better to use this to show it to the user. it creates a new array, turns it into a string 
		# instead of #{farm}
		# then farm_found = nil
		# farms.each do |farm|
		# 	if (farm.name == farm_name)
		# 		farm_found = farm_choice
		# 	end
		# end  #this happens till you find the farm name that was entered 
		# farm_found.people << person

		#when we're using a hash instead of an array up top the code changes to
		# #{farms.keys.join(', ')}
		# and then instead of the .each loop you do --> farms[farm_name].people << person -- so you insert the person into the people array of the farm object through the key


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







