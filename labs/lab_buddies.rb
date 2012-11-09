def scramble(group_size)

	sample = %w{Adrian Derrick Larry Jasmine Raymond Dustin Aaron Chris Zahra Gaurav Audric Avinash Jon Derrick Tim Chang Marc Thomas}
	sample_length = sample.length
	starting_index = 0
	
	ending_index = group_size - 1

	new_sample = sample.shuffle

	hash_class = {}

	while ending_index < sample_length

		counter ||= 1

		if (group_size + (sample_length - 1 - ending_index) < group_size * 2)
			hash_class["Group #{counter}"] = new_sample[(starting_index..(sample_length-1))].join(', ')
			puts "Here is group #{counter}: #{new_sample[(starting_index..(sample_length-1))].join(', ')}"
		else
			hash_class["Group #{counter}"] = new_sample[(starting_index..ending_index)].join(', ')
			puts "Here is group #{counter}: #{new_sample[(starting_index..ending_index)].join(', ')}"
		end

		starting_index = ending_index + 1
		ending_index += group_size
		counter += 1
	end

end

require 'pry'

user_prompt = "How many people do you want per group?"
puts user_prompt

group_size = gets.to_i

while hash_class

scramble(group_size)



require 'pry'
require 'active_support/all'

students = ['Adrian Bautista', 'Larry Buchanan', 'Jasmine Chabra', 'Raymond Chan', 'Dustin Coates', 'Aaron Fuchs', 'Chris Goodmacher', 'Zahra Jabini', 'Avinash Karnani', 'Gaurav Karnani', 'Audric Kim', 'Jonathan Ku', 'Derrick Lannaman', 'Tim LaTorre', 'Hsi-Chang Lin', 'Marc Whitman', 'Thomas Yang']
puts `clear`
puts "Group size?"
size = gets.to_f
is_lonely = (students.count % size.to_i) == 1 # you do the modulus to see if there's one guy left out

if is_lonely #when there's one guy left
  ((students.count / size) - 1).truncate.times{|x| puts "Group #{x}: #{students.pop(size).to_sentence}"}
  # 17/4.0 and then minus 1 so you have 3.1 and truncate it and make it just a 3 (truncate is the opposite of ceil) and then do the loop, 
  # and then to_sentence makes it into a sentence... you have to install the active_support/all gem
  # you put to_sentence at the end of an array and it does all the work of the join, etc does it for you
  puts "Group z: #{students.to_sentence}"
else
  (students.count / size).ceil.times{|x| puts "Group #{x}: #{students.pop(size).to_sentence}"}
  # when you do a ceil... its takes 17/3.0 and it rounds up the remaining to 6 instead of 5.something
  # .times it just loops through it based on the size you put it 
end









































