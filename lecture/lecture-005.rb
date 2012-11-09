require 'pry'

module Work
	def fix_bugs
		"fixing bugs"
	end

	def submit_code
		"submit code"
	end

end

module Play
	def ping_pong
		"ping pong"
	end

	def goof_off
		"goof off"
	end

end

class Employee
	def sumit_time_card
		"submit time card"
	end
end




class Dev < Employee
	include Workd
	include Play

	def codes #this is an instance method, you can only call instance methods on an object d1.codes
		puts "i am coding here"
	end

	def self.snack #these are class methods, you cannot called these from the object, you have to call them from the class itself. Dev.snack 
		puts "i am snacking"
	end
end


class Calc
	attr_accessor :numbers

	def initialize(numbers)
		@numbers = numbers
	end

	def Calc.square(x) #you can either do the name of the classor just say self
		x * x
	end

	def sum
		numbers.inject(&:+)
	end


end


binding.pry
