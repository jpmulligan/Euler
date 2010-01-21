#!/usr/bin/env ruby

def fib(n)
  if n == 0
    return 0
  elsif n == 1
    return 1
  else
    return fib(n-1) + fib(n-2)
  end
end

i = 0
x = 0
sum = 0

while x < 4000000
  x = fib(i)
  if x % 2 == 0
    puts x
    sum += x
  end
  i += 1

end

puts sum



