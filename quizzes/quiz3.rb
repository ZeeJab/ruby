# create a student class with a name dob gender gpa and major
# initialize it 
# then put this into a students array 
# and then for each one of these
# then print out the students array
# this is not an interactive program, just manually add 
# also have the to_s method, so you can have friendly name for the object

class Student
	attr_accessor :name, :dob, :gender, :gpa, :major

	def initialize(name, dob, gender, gpa, major)
		@name = name
		@dob = dob
		@gender = gender 
		@gpa = gpa
		@major = major
	end

	def to_s
		"#{name} is a #{gender}, with date of birth of #{dob}, majoring in #{major} and #{gpa}."
	end
end

students = []

puts "Please enter your (i)nformation or (q)uit."
response = gets.chomp

while response != "q"

	puts "What is your name?"
	name = gets.chomp
	puts "What is your date of birth?"
	dob = gets.chomp
	puts "What is your gender?"
	gender = gets.chomp
	puts "What is your gpa?"
	gpa = gets.chomp
	puts "What is your major?"
	major = gets.chomp

	students << Student.new(name, dob, gender, gpa, major)
	puts "This is the information collected in the survey: #{students}"

	puts "Please enter your (i)nformation or (q)uit."
	response = gets.chomp

end

if response == "q"
	puts "Thanks for participating in our survey!"
	puts "This is the information collected in the survey: #{students}"
end









