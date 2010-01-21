#!/usr/bin/env ruby

# The following iterative sequence is defined for the set of positive integers:
#
#  n --> n/2 (n is even)
#  n --> 3n + 1 (n is odd)

def hailstone(n)
  i = 1
  yield i, n
  while n > 1
    if n % 2 == 0
      n = n/2
    else
      n = 3*n + 1
    end
    i += 1
    yield i, n
  end
  return i
end

maxlength = 0
seed = 77031

puts "Seed = #{seed}"

filename = "hailstone" + seed.to_s + ".csv"

if File.file?(filename)
  puts "File exists! Deleting that and making a new one..."
  File.delete(filename)
end

puts "Opening and writing to new file..."
f = File.new(filename, "w+")

length = hailstone(seed) { |i, n| f.puts "#{n}" }

f.close

puts "Wrote #{length} data points to #{filename} and closed file. kthnxbai"

