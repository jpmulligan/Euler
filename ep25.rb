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

def factor(n)
  f = []
  1.upto(Math.sqrt(n)) do |i|
    if i == 1
      f.push(i)
    elsif n % i == 0
      f.push(n/i)
      f.push(i)
    end
  end
  f.push(n)
  return f.uniq.sort
end

def isfib(z)
  x1 = (5*z**2)+4
  x2 = (5*z**2)-4

  if factor(x1.abs).length % 2 != 0 || factor(x2.abs).length % 2 != 0
    return true
  else
    return false
  end

end

def fib2(n)
  old = 0
  new = 1
  
  n.times do |i|
    old, new = new, old + new
  end
  
  return old
end

digits = 0
x = 1

while digits < (10**999).to_s.length
  f = fib2(x)
  digits = f.to_s.length
  puts "#{x}\t#{digits}"
  if digits == (10**999).to_s.length
    puts "* #{f} *"
    puts "Term = #{x}"
  end
  x += 1
end