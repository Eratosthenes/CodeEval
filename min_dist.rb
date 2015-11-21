def min_dist(*args)
  a=[*args.min..args.max]
  min_dist = a.length*a[-1]
  a.each do |n|
    dist = args.map{|x| (x-n).abs}.reduce(:+)
    min_dist = dist if dist < min_dist
  end
  min_dist
end

File.foreach(ARGV.first) do |line|
  args = line.chomp.split(" ").map{|x| x.to_i}
  puts min_dist(*args)
end
