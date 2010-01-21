#!/usr/bin/env ruby

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

d = 0
i = 1
t = 0
maxfactor = 0

while d <= 500
  t = t + i
  i += 1
  d = factor(t).size
  if d > maxfactor
    maxfactor = d
    puts "#{t}\t#{maxfactor}"
  end
end

puts "\nWin! #{t} --> #{maxfactor}"


