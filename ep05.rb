#!/usr/bin/env ruby

def isgud(n, max)
  max.downto(1) do |i|
    if n % i != 0
      return false
    end
  end
  return true
end

i = 20

until isgud(i, 20)
  i += 20
end

puts i


