def min_dist(chunk)
  points = chunk.map{|x| x.split(" ").map(&:to_i)}
  dists = []
  points.each do |p1|
    x1,y1 = p1.flatten
    points.each do |p2|
      x2,y2 = p2.flatten
      dists << Math.sqrt((y2-y1)**2 + (x2-x1)**2) if p1!=p2
    end
  end
  dists.min<10000 ? "%.4f"%dists.min : "INFINITY"
end

#main
contents = File.readlines(ARGV.first).map{|x| x.chomp}
i = 0
loop do
  chunk_size = contents[i].to_i
  break if chunk_size == 0
  chunk = contents[i+1..i+chunk_size]
  puts min_dist(chunk)
  i += chunk_size+1
end

