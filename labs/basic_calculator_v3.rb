def single (flag)
	puts "First number"
	num1 = gets.to_f
	puts "Second number"
	num2 = gets.to_f	
	case flag
		when "a"
			puts "Answer is #{num1 + num2}"
		when "s"
			puts "Answer is #{num1 - num2}"
		when "m"
			puts "Answer is #{num1 * num2}"
		when "d"
			puts "Answer is #{num1 / num2}"
		when "p"
			puts "Answer is #{num1 ** num2}"
		when "sq"
			puts "Answer is " + Math.sqrt(num1)
	end
end

puts "Do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower, (sq)uare root or (q)uit?"
mode = gets.chomp
while mode != "q"
	single(mode)
	puts "Do you want to (a)dd, (s)ubtract, (m)ultiply, (d)ivide, (p)ower, (sq)uare root or (q)uit?"
	mode = gets.chomp
end
puts("goodbye")

#Math.sqrt(n)