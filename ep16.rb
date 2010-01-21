#!/usr/bin/env ruby

sum = 0

(2**1000).to_s.each_char do |n|
  sum += n.to_i
  puts sum
end
puts "------------"
puts sum


