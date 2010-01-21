
n = 2000000

pile = (2..n).entries

2.upto(Math.sqrt(n)) do |p|
  a = pile.length
  pile.delete_if {|x| x % p == 0 && x > p}
  if pile.length < a
    puts pile.length
    a = pile.length
  end

end
puts "-------------"
puts pile.inject(0) { |sum, x| sum + x }

