def shortest_rep(str)
  (1..str.length).each do |i|
    next if str.length%i != 0
    return i if str.split(//).each_slice(i).to_a.uniq.length==1
  end
end

