require 'pry'

class Employee #so we add a employee class that all have names and employee id's
	attr_accessor :name, :employee_id
end

class Dev < Employee #this represents a generic developer that also inherits from Employee class
	attr_accessor :language

	def to_s 
		"#{name} loves #{language}."
	end
end


class JuniorDev < Dev #these are more specific devs, we want to us attr_accessor in generic dev
	# through inheritence


	def fix_bugs
		puts "#{name} with an id of #{employee_id} loves #{language} is fixing bugs"
	end
end

class SeniorDev < Dev #this means their inheriting functions from their parents class

	def delegate_bug_fixing
		puts "#{name} with an id of #{employee_id} loves #{language} is telling jr devs to fix bugs"
	end	
end

class QualityAssurance < Employee #this wont inherit from Dev beacause they dont have a language
	def spot_bugs
		puts "#{name} with an id of #{employee_id} is spotting bugs"
	end
end

binding.pry



[1] pry(main)> numbers = (1..10).to_a
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
[2] pry(main)> numbers
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
[3] pry(main)> numbers.select{|n| n.even?}
=> [2, 4, 6, 8, 10]
[4] pry(main)> numbers.reject{|n| n.even?}
=> [1, 3, 5, 7, 9]
[5] pry(main)> numbers.map{|n| n}
=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
[6] pry(main)> numbers.map{|n| n**2}
=> [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
[7] pry(main)> numbers.map{|n| "hello"}
=> ["hello",
 "hello",
 "hello",
 "hello",
 "hello",
 "hello",
 "hello",
 "hello",
 "hello",
 "hello"]
[8] pry(main)> numbers.map{|n| "hello#{n}"}
=> ["hello1",
 "hello2",
 "hello3",
 "hello4",
 "hello5",
 "hello6",
 "hello7",
 "hello8",
 "hello9",
 "hello10"]
[9] pry(main)> numbers.map{|n| "hello#{n}".upcase}
=> ["HELLO1",
 "HELLO2",
 "HELLO3",
 "HELLO4",
 "HELLO5",
 "HELLO6",
 "HELLO7",
 "HELLO8",
 "HELLO9",
 "HELLO10"]
[10] pry(main)> numbers.map{|n| n**2}
=> [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
[11] pry(main)> numbers.map{|n| n**2}.select{|n| n > 50}
=> [64, 81, 100]
[12] pry(main)> numbers.map{|n| n**2}.select{|n| n > 50}.inject(&:+)
=> 245
