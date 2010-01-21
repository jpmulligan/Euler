#!/usr/bin/env ruby

biggyp = 0

(100..999).each do |i|
  (100..999).each do |j|
    p = i*j
    if p.to_s() == p.to_s().reverse && p > biggyp
      biggyp = p
    end
  end
end

puts biggyp