
class Mathematics
	attr_accessor :numbers

	def initialize(numbers)
		@numbers = numbers
	end

	def Mathematics.factorial(x) 
		1.upto(@numbers).inject(&:*)
	end
end

Mathematics.New()