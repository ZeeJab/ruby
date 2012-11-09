require "pry"

load 'class.rb'
action = nil
dinners = []

puts '(c)arb or (p)rotein or (q)uit?'
action = gets.chomp

while action != 'q'
	case action
	when 'c'
		puts "grain type??"
		a = gets.chomp
		puts "calories?"
		b = gets.chomp.to_f
		puts "servings?"
		c = gets.chomp.to_f
		puts "prep time in minutes?"
		d = gets.chomp.to_f

		dinner = Carb.new(a)
		dinner.calories = b
		dinner.servings = c
		dinner.prep_time = d
		dinners << dinner
	when 'p'
		puts "animal type??"
		a = gets.chomp
		puts "calories?"
		b = gets.chomp.to_f
		puts "servings?"
		c = gets.chomp.to_f
		puts "prep time in minutes?"
		d = gets.chomp.to_f

		dinner = Protein.new(a)
		dinner.calories = b
		dinner.servings = c
		dinner.prep_time = d
		dinners << dinner
	end
		dinner = nil
		puts '(c)arb or (p)rotein or (q)uit?'
		action = gets.chomp
end
time = 0

puts "what's for dinner: #{dinners.join(', ')}"

dinners.each do |x|
	time = x.prep_time + time
end
puts "time to serve dinner #{time} minutes"

cals = 0
dinners.each do |y|
	cals = (y.calories * y.servings) + cals
end
puts "total calories in dinner #{cals}"



# create a person class with a name and a type(kid, adult)
# the person will also have menus = []
# then select from available menus and put them inside the menus array 
# if person is a kid you cannot give them a menu if anyday in that menu is greater than 1000 calories

# then store these persons in a people hash with the name is the key and the object is person 