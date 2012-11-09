# construct 10 points, p1, p2, etc
# using Random.rand(1000)
# give it an x, y coordinate

# class Point
# 	def x
# 	end

# 	def y
# 	end
# end


# distance between the points?
# and then the total distance of all the points -- length of the wire?




require 'pry'
require 'active_support/all'

class Wire
  attr_accessor :points, :length
  def initialize
    @points = 10.times.map { Point.new } # 10.times an array or point.new where it creates 10pints of x and y randomly
  end
  def distance(p1, p2) #this is the calculation that calculates the distance between two points
    Math.sqrt(((p1.x - p2.x)**2) + ((p1.y - p2.y)**2)) #squareroote of x's squared + the y's squared
    #this function gives you the distance between the two points
  end
  def length
    (points.length - 1).times.map {|x| distance(points[x], points[x+1])}.inject(&:+)
    #when you have 5 points you do the distance for 4 points... so when there's 10 points you do the distance for minus one of it
    #so 9.times.map which creates the array... distance between 0 and 1
    #then 1 and 2
    # 2 and 3 
    #so you get the array of all the distances and then the .inject plus adds them all together
  end
  def to_s
    "This wire is of length #{length}"
  end
end

class Point
  attr_accessor :x, :y #with this all you ahve to do 
  def initialize
    @x = Random.rand(1000)
    @y = Random.rand(1000)
  end
end

puts Wire.new #so a new object is created and you print it to the screen....thats all you have to do to make the whole thing run
