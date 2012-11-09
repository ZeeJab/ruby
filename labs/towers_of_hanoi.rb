require 'pry'
# # How many towers do you want?

# # From? (x, y)
# # To? (x, y)

board = Hash.new
board[:c1] = nil
board[:c2] = nil
board[:c3] = nil




# class Game
# 	def initialize(board, number)
# 		@number = n
# 		@board = {}
# 	end

# 	def board	
		
# 	end

# 	def move(start, ending)
# 		starting = response.pop(start)
# 		ending = [starting.push(ending)]
# 	end 
		
# end




puts "How many towers do you want or (q)uit?"
response = gets.to_i
response = (1..response).to_a
board[:c1] = response

["|","|","|"]  #figure out how to code this instead of hardcoding it in. 
#loop through the i and move them to turn them on their head one by one.

puts "from?"

binding.pry




 