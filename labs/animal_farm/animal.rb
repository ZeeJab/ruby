class Animal
	attr_accessor :name, :species, :gender

	def initialize(name, species, gender)
		@name, @species, @gender = name, species, gender
	end

	def to_s
		"#{name}: #{species} and #{gender}"
	end
end