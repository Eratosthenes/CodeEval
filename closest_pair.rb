contents = File.readlines(ARGV.first).map{|x| x.chomp}
points = contents[1..-2].map{|x| x.split(" ").map{|y| y.to_i}}
pairs = points.combination(2).to_a
dists = []; pairs.each do |pair|
  x1,y1,x2,y2 = pair.flatten
  dists << (y2-y1)**2 + (x2-x1)**2
end
puts "%.4f"%Math.sqrt(dists.min)
