File.foreach(ARGV[0]) do |line|
  n, p1, p2 = line.chomp.split(",").map(&:to_i)
  bits = n.to_s(2).split(//).reverse
  puts bits[p1-1] == bits[p2-1]
end
