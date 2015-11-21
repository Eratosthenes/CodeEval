def string_rot(first, second)
  rots = first.split(//).cycle(2).to_a.each_cons(first.length).to_a
  .map{|x| x.join()}.include?(second) 
end

puts string_rot("Hello","lloHe").to_s.capitalize
puts string_rot("Basefont","tBasefon").to_s.capitalize
