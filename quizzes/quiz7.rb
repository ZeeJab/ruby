require 'pry'
class Play
	attr_accessor :name

	def name
		@name = name

	def walk
		@run = run
		puts "#{name} is walking"
	end	

	def self.run
		@run. = run
		puts "Homeboy is running!"
	end

end

z = Play.new("Zahra")

z.walk
Play.run 

binding.pry




