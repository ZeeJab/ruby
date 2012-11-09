require "pry"

class Food
	attr_accessor :calories, :servings, :prep_time
	def initialize(b,c,d)
		@calories = b
		@servings = c
		@prep_time = d
	end
	def to_s
		"calories: #{calories}, servings: #{servings}, prep time: #{prep_time}"
	end
end

class Protein < Food
	attr_accessor :animal_type
	def initialize(a)
		@animal_type = a
	end
	def to_s
		animal_type
	end
end

class Carb < Food
	attr_accessor :grain_type
	def initialize(a)
		@grain_type = a
		@grains = []
	end
	def to_s
		grain_type
	end

class Person 
	attr_accessor :name, :type

	def initialize(name, type)
		@name = name
		@type = type
		@menus = []
	end

end