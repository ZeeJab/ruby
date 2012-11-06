
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
initialize(url)

@url = url
end

def parse
	@s = HTTParty.get(@url)