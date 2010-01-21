#!/usr/bin/env ruby

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

i = 1
n = 1
while n <= 10001
  i += 1
  if isprime(i)
    puts "#{n}:\t#{i}"
    n = n + 1
  end
end
