def generate_positions(pos_str)
  deltas=[1,2,-1,-2].permutation(2).to_a.select{|x,y| x.abs!=y.abs}
  letter, num = pos_str.split(//)
  num, letter = num.to_i, letter.ord
  res=[];deltas.each do |delta|
    a, b = letter+delta[0], num+delta[1]
    res << [a.chr, b.to_s] if a.between?("a".ord, "h".ord) && b.between?(1,8)
  end
  res.map{|x| x.join()}.sort.join(" ")
end

puts generate_positions("g2")
