numbers = (250..750).to_a

numbers.map{|n| n}.join(', ')

odd = numbers.select{ |n| n.odd?}.to_a
puts odd

sum = odd.inject(&:+)
puts sum