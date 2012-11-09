
require 'pry'
class Mathematics
	attr_accessor :numbers

	def initialize(numbers)
		@numbers = numbers
	end

	def Mathematics.factorial(x) 
		1.upto(@numbers).inject(&:*)
	end
end

puts Mathematics.New(8)

binding.pry