str="72 64 150 | 100 18 33 | 13 250 -6"
m=str.split("|").map{|x| x.split(" ").map{|y| y.to_i}}
puts m[0].zip(*m[1..-1]).map{|x| x.max}.join(" ")
