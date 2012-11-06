require 'pry'

inventory = {:shoe => 80.33, :shirt => 25.67, :sock => 7.99}
tax = 0.0931
subtotal = 0
shopping_cart = {:shoe => 0, :shirt => 0, :sock => 0}

puts "This is our inventory:\nShoes = $80.33\nShirts = $25.67\nSocks = $7.99"

puts "What are you purchasing?\nShoe, Shirt, Sock, or (C)heckout?"
input = gets.chomp.downcase

while input != "c"

	puts "How many #{input}s would you like to purchase?"
	amount = gets.to_i

	shopping_cart[input.to_sym] = shopping_cart[input.to_sym] + amount

	cost = inventory[input.to_sym] * amount
	subtotal = subtotal + cost
	tax_amount = subtotal * tax
	total = subtotal + tax_amount
	puts "You just added:\n#{amount} #{input}s = #{cost}"

	puts "Here is your shopping cart:\n#{shopping_cart[:shoe]} pairs of shoes = #{shopping_cart[:shoe] 
	* inventory[:shoe]}\n#{shopping_cart[:shirt]} shirts = #{shopping_cart[:shirt] 
	* inventory[:shirt]}\n#{shopping_cart[:sock]} pairs of socks = #{shopping_cart[:sock] * inventory[:sock]}"

	puts "What are you purchasing?\nShoe, Shirt, Sock, or (C)heckout"
	input = gets.chomp.downcase

end

puts "Your receipt:\n#{cart[:shoe]} 
pairs of shoes = #{shopping_cart[:shoe] * inventory[:shoe]}\n#{shopping_cart[:shirt]} shirts = #{shopping_cart[:shirt] 
* inventory[:shirt]}\n#{cart[:sock]} pairs of socks = #{cart[:sock] 
* inventory[:sock]}\nSubtotal $#{"%.2f" % subtotal}\nTax $#{"%.2f" % tax_amount}\nTotal $#{"%.2f" % total}"