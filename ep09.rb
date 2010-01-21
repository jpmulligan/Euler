
(0..1000).each do |a|
  (a+1..1000).each do |b|
    (b+1..1000-a-b).each do |c|
      
      sum = a+b+c
      if (a**2 + b**2 - c**2) == 0 && sum == 1000
        p = a*b*c
        puts "#{a}\t#{b}\t#{c}\t#{p}"
      end

    end
  end
end
