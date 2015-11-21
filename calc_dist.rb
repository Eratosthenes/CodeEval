File.foreach(ARGV[0]) do |line|
    x1,y1,x2,y2 = line.chomp.scan(/-?\d+/).map{|x| x.to_i}
    dist = Math.sqrt((y2-y1)**2 + (x2-x1)**2)
    puts dist.to_i
end
