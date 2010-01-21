#!/usr/bin/env ruby

def fact(n)
  if n == 0
    return 1
  else
    return n * fact(n-1)
  end
end

n = 20

paths = fact(2*n) / ( fact(n)**2 )

puts paths