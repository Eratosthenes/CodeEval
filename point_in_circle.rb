def dist(p1, p2)
  Math.sqrt((p2[1]-p1[1])**2 + (p2[0]-p1[0])**2)
end

File.foreach(ARGV.first) do |line|
  ctr, r, pt = line.chomp.split(";").map{|x| x.scan(/-?[0-9]*\.?[0-9]+/)}
    .map{|x| x.map{|x| x.to_f}}
  puts dist(ctr, pt) < r[0]
end
