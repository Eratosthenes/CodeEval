def matrix_rotation(str)
  str=str.split(" ")
  str=str.each_slice(Math.sqrt(str.length)).to_a
  str[0].zip(*str[1..-1]).map{|x| x.reverse}.flatten.join(" ")
end

p matrix_rotation("a b c d e f g h i j k l m n o p")
