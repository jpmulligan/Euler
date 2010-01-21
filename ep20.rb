#!/usr/bin/env ruby

sum = 0

def fact(n)
  if n == 0
    return 1
  else
    return n * fact(n-1)
  end
end
puts fact(100)

fact(100).to_s.each_char do |n|
  sum += n.to_i
end
puts "------------"
puts sum


