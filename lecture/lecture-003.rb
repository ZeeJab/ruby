#Classes are a keypoint in ruby
#they're blueprints, they don't actually do anything
#from that you can create objects and they do things

require 'pry'

# class Persona
# 	def initialize(n, g) #this gets called when you call .new
# 		@first_name = n 
# 		@gender = g 
# 	end

# 	def say_hello
# 		"hello world"
# 	end

# 	def gender(g) #call it and then pass it in
# 		"you are #{g}"
# 	end

# 	def set_name(n) #this is how you set it
# 		@first_name = n #the @makes it remember after the function is done running
# 		#its an instance variable. 
# 	end

# 	def get_name #gets no parameters, cuz you're getting it
# 		@first_name #this is how you get it
# 	end

# 	def set_gender(g)
# 		@gender = g
# 	end

# 	def get_gender
# 		@gender
# 	end

# end

#make it shorter and cleaner

class Dog
	attr_accessor :name #it has one property called name

	def initialize(n) #we're initializing it
		@name = n
	end

	def to_s #and this is what it spits out
		"#{name} is a dog! he likes to go woof!"
	end

end

class Person
	attr_accessor :name, :gender, :dogs #this creates the getters and setters all at the same time
	
	def initialize(n, g) #this gets called when you call .new
		@name = n 
		@gender = g 
		@dogs = []
	end

	def to_s
		"#{name} is a #{gender}" #you can also use the instance variable @name and @gender
	end


end

# [1] pry(main)> p1 = Person.new('zahra', 'female')
# => zahra is a female
# [2] pry(main)> people = []
# => []
# [3] pry(main)> people << p1
# => [zahra is a female]
# [4] pry(main)> p2 = Person.new('adrian', 'male')
# => adrian is a male
# [5] pry(main)> people << p2
# => [zahra is a female, adrian is a male]
# [6] pry(main)> people
# => [zahra is a female, adrian is a male]
# [7] pry(main)> people[1]
# => adrian is a male
# [8] pry(main)> people[0]
# => zahra is a female
# [9] pry(main)> people[0].gender
# => "female"
# [10] pry(main)> people.each { |p| puts "cool : #{p}"}
# cool : zahra is a female
# cool : adrian is a male
# => [zahra is a female, adrian is a male]

binding.pry