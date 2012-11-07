require 'pry'
require 'HTTParty'

load 'crawler.rb'

puts "Which website would you like to analyze?"
url = gets.chomp

c1 = Crawler.new(url)

c1.parse
c1.clean

puts "Url: #{c1.url}"
puts "Word count: #{c1.count}"
puts "Total number of letters: #{c1.letters}"
puts "Total number of vowels: #{c1.vowels}"
puts "Total number of consonants: #{c1.consonants}"
puts "Obama mentioned: #{c1.obama} times"
puts "Romney mentioned: #{c1.romney} times"

puts "View your histogram? y/n"
if gets.chomp=="y"
	histogram = c1.histogram()
	puts "Histogram"
	histogram.each {|key, value| puts "#{key}: #{value}"}
end