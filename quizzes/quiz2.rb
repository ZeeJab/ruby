# # 1. Sum up the numbner between 250..180,000

sum = (250..180000).each do |x|
	puts "the sum is: #{|sum,x| sum + x }"
end

puts "The sum of 250 through 180,000 is #{sum}"

# SORRY THIS DOESNT WORK!



# # 2. create a colors array:
# promt the user to either enter in a new color or quit

puts "Would you like to enter a (c)olor or (q)uit?"
response = gets.chomp

colors = []

while response != "q"
	puts "Enter a new color:"
	color = gets.chomp
	colors << color

	colors.each do |color|
	puts "Your colors are #{colors}"
	end	
end

