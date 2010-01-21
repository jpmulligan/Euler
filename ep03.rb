#!/usr/bin/env ruby
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

require 'progressbar'

def isprime(n)
  n = Integer(n).abs
  if n < 2
    return false
  end
  if n == 2
    return true
  end
  if n % 2 == 0
    return false
  end
  for x in (3..Math.sqrt(n)).step(2).each do
    if n % x == 0
      return false
    end
  end
  
  return true
  
end

foo = 600851475143
largest_factor = 0

pbar = ProgressBar.new("Euler 3", Math.sqrt(foo))

for j in (2..Math.sqrt(foo)) do
  if foo % j == 0 && isprime(j)
    if foo > largest_factor
      largest_factor = j
    end
  end
  pbar.inc
end

pbar.finish  
  
puts("Largest prime factor: #{largest_factor}")