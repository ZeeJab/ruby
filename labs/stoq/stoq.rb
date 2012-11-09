# create an interactive program where you can create a user
# first create a user
# then ask them what their name to be
# whats their password
# and how much cash do they have?
# then login as the user...display the users, "joe" "sally" "jim" ?
# type in as sally... whats your password?
# if you type the password in wrong you cant log in
# after you log in as the user you get to buy stock
# the user has stocks (is there a relationship?)
# after you login, you can buy stock. 
# tell the symbol you want... put in the symbol.
# then how many shares do you want to buy?
# you have to go look up the quote for how much each share is right now? lastTrade is the current value of the stock and then deduct it from their cash... and that becomes their balance
# if they dont have enough money for the trade, then dont do it. only purchase shares if they have enough cash. 
# this is a loop, you can buy as much stock as you want for this particular user you're logged in as
# then show stock dashboard...
# 1. show the current price of the stock
# 2. show the change from lastTrade -.13cents
# 3. show the average price
# 4. show how many shares you have
# 5. show how much you have in this stock, #of shares * current price
# do this for all the stocks this person bought. 

# you're gonna run this and its gonna refresh every second... and its gonna be a live feed of whats happeneing during the day

# sleep 3
# the only way out is ctrl c

class User
	attr_accessor :name, :password, :cash, :stock

	def initialize(name, password, cash)
		@name = name
		@password = password
		@cash = cash
	end

end

puts "Create a (u)ser name, (l)ogin or (q)uit?"
response = gets.chomp

while response != "q"
	case response
	when "u"
		puts "Please Create your user name:"
		name = gets.chomp
		puts "Please enter a password:"
		password = gets.chomp
		puts "How much cash do you have?"
		cash = gets.to_f

		User.new(name, password, cash)
		
	when "l"
		puts "What is your user name? #{name}"
		user_name = gets.chomp
		while user_name == name
			puts "What is your password?"
			user_password = gets.chomp
			if user_password == password
				puts "What stock would you like to buy?"
			puts "What is your password"
			



	puts "Create a (u)ser name, (l)ogin or (q)uit?"
	response = gets.chomp

end

if response == "q"
	puts "Have a wonderful day!"
end



