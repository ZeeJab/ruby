require 'pry' #it loads in the pry gem into this program

# this is a comment
# use this any time you need to explain something

puts "What is your name?" #puts prints the thing
first = gets # gets, it waits for you to input somtehing in, 
#whatever you put in after you hit enter gets put in the variable

#version 1- normal
puts "you typed in " + first

#version 2 - string interpolation 
puts "you typed in #{first}"

#version 3 - single quotes - does not work
puts 'you typed in #{first}'



puts "Enter an integer?"
a = gets
a = a.to_i #converts it into an integer like parseInt(a) in javascript

puts "Enter a floating point number?"
b = gets
b = b.to_f #converts it into a floating point

c = a + b
puts "the result of #{a} summed with #{b} is #{c}"



#this is how to debug using pry
binding.pry



#if statements
puts "What is your age?"
age = gets.to_i #convert it into an integer in one line

if age < 5
	puts "You are a baby"
elsif (age >= 5) && (age < 18)
	puts "You are a minor"
else
	puts "You are an adult"
end


puts "Enter a letter"
letter = gets.chomp #it gets rid of the \n enter key new line thing



#case statement is similar to if statements, 
#it matches to whatever you type in you can have as many as you want
case letter
when "a"
	puts "You typed in a"
when "b"
	puts "You typed in b"
when "c"
	puts "You typed in c"
when "d"
	puts "You typed in d"
end



#looping
puts "Enter a starting number"
start = gets.to_i
puts "enter an ending number"
stop = gets.to_i

while start <= stop
	puts "Counting #{start}"
	start = start + 1 
	#or you can say += 1 or *= 2 same meaning but a shortcut
end



#mehods like functions in javascritp --
#they take inputs and give you an output -- something goes in and somthing comes out
def square(a) #a is the variable
	# is the input 
	# the output is the LAST thing that it does - like the return in javascript
	a * a #so this is the last line and it becomes the output to whatever called it
end

def volume(l, w, h)
	l * w * h
end

puts "Length?"
length = gets.to_i
puts "Width?"
width = gets.to_i
puts "Height?"
height = gets.to_i
vol = volume(length, width, height)
puts "The  volume of #{length} and #{width} and #{height} is #{vol}"

puts "Enter a number to square"
b = gets.to_i
c = square(b)
puts "The square of #{b} is #{c}"










