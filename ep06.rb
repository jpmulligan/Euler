#!/usr/bin/env ruby

square_sum = 0
arith_sum = 0

(0..100).each do |i|
  square_sum += i**2
  arith_sum += i
end
puts (arith_sum**2) - square_sum

