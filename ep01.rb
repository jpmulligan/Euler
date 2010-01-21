#!/usr/bin/env ruby

sum = 0

(0..999).each do |i|
  if i.divmod(3)[1] == 0 || i.divmod(5)[1] == 0
    sum += i
  end
  pbar.inc
end

puts sum
