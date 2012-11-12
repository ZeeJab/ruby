# #prompt user for number?
# response(10)
# response.explode
# your output will be the square of 10 is 100
# make it so there's no error message

puts "enter a (n)umber or (q)uit"
response = gets.to_f

while response != 'q'

	begin 
	response.explode
	rescue 
		puts "The square of #{response} is #{response*response}! Good job."

	end

	puts "(n)umber or (q)uit"
	response = gets.chomp
end