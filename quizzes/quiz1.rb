puts "What is your name?"
response = gets.chomp

puts "Enter a number..."
a = gets.to_i

puts "Enter a second number..."
b = gets.to_i

puts "Enter a third number..."
c = gets.to_i

def add(a,b,c)
	(a + b)*c
end

def power(a,b)
	a**b
end

def square(a,b)
	Math.sqrt(a*b)
end

d = add(a,b,c)
e = power(a,b)
f = square(a,b)

puts "#{response} your results are #{d}, #{e}, #{f}"






# puts "Sally these are your results"

# d = , e = , f = 


# a = First Num?
# b = Second Num?
# c = Third Num?

# d = (a + b)*c
# e = a** b
# f = sqrt(a * b)