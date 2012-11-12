# class MyTest < Test::Unit::TestCase
require 'test/unit'
require 'pry'

class MyString
	def self.length
		'hello world'
	end
end

class MyTest < Test::Unit::TestCase
	def test_length
		assert_equal(11, 11)
	end
end