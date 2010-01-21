#!/usr/bin/env ruby

# The following iterative sequence is defined for the set of positive integers:
#
#  n --> n/2 (n is even)
#  n --> 3n + 1 (n is odd)

require 'progressbar'

def hailstone(n)
  i = 1
  yield n
  while n > 1
    if n % 2 == 0
      n = n/2
    else
      n = 3*n + 1
    end
    i += 1
    yield n
  end
  return i
end

maxlength = 0
maxseed = 0
space = 1000000

pbar = ProgressBar.new("Euler 14", space)

0.upto(space) do |seed|

  length = hailstone(seed) { |x| }
  
  if length > maxlength
    maxlength = length
    maxseed = seed
    #puts "#{seed} --> #{length}"
  end
  pbar.inc
  
end

pbar.finish

puts "Seed #{maxseed} yields a chain of length #{maxlength}."
