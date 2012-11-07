
# CREATE A CLASS CALLED CRAWLER
# INITIALIZE METHOD
# PASS IT THE URL

# make different crawler objects
# c1 = crawler.new("http:\\cnn.com")
# c1.parse

# c2 = msnbcnew("msnbc.com")
# c2.parse

# c3 = crawler.new('foxnews.com')


# c1.words = how many words are on that page? 2354
# get the array.count 

# c1.url tell me what url you're parsing cnn.com
# c1.vowels how many vowels are on this page 454
# c1.constants how many constants are on this page: total- vowels 454
# c1.obama = 200
# c1.romney = 300
# c1.histogram = {:a = 200, :v = 175, :obama = 300, :romney = 1000} SHOW THE FREQUENCY OF HOW MANY TIMES THOSE WORDS WERE USED? PARSE EVERY WORD ON THE SITE
# SORT FROM HIGH TO LOW
# search for ruby enumerable
# for the historgram you have to use a hash



class Crawler
	attr_accessor :url, :data

	def initialize(u)
		@url = u
	end

	def parse()
		@data = HTTParty.get(url).split
	end

	def clean()
		@data = data.reject {|string| string.include?('/')}
		@data = data.reject {|string| string.include?('\\')}
		@data = data.reject {|string| string.include?('.')}
		@data = data.reject {|string| string.include?('(')}
		@data = data.reject {|string| string.include?(')')}
		@data = data.reject {|string| string.include?('>')}
		@data = data.reject {|string| string.include?('<')}
		@data = data.reject {|string| string.include?('}')}
		@data = data.reject {|string| string.include?('{')}
		@data = data.reject {|string| string.include?('-')}
		@data = data.reject {|string| string.include?('=')}
		@data = data.reject {|string| string.include?('!')}
		@data = data.reject {|string| string.include?(':')}
		@data = data.reject {|string| string.include?('&')}
		@data = data.reject {|string| string.include?(';')}
		@data = data.reject {|string| string.include?('_')}
		@data = data.reject {|string| string.include?('|')}
		@data = data.reject {|string| string.include?('[')}
		@data = data.reject {|string| string.include?(']')}
		@data = data.reject {|string| string.include?('+')}
		@data = data.reject {|string| string.include?('"')}
		@data = data.reject {|string| string.include?('\'')}
		@data = data.reject {|string| string.include?(',')}
		@data = data.reject {|string| string.include?('#')}
	end	

	def count()
		data.count
	end

	def letters()
		letters=0
		data.each {|string| letters+= string.count "a-z"}
		return letters
	end

	def vowels()
		letters=0
		data.each {|string| letters+= string.count "aeiou"}
		return letters
	end

	def consonants()
		letters=0
		data.each {|string| letters+= string.count "bcdfghjklmnpqrstvwxyz"}
		return letters
	end

	def obama()
		data.count "Obama"
	end

	def romney()
		data.count "Romney"
	end

	def histogram()
		histogram = {}
		(0..(data.length-1)).each do |i|
			sym = data[i].downcase.to_sym
			if histogram[sym]
				histogram[sym] += 1
			else
				histogram[sym] = 1
			end
		end

		histogram = histogram.sort_by {|key, value| value}
		return histogram
	end
end