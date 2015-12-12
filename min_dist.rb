def min_dist(args)
  a=[*args.min..args.max]
  min_dist = a.length*args.max
  a.each do |n|
    dist = args.map{|x| (x-n).abs}.reduce(:+)
    #p "dist(#{n}) = #{dist}"
    min_dist = dist if dist < min_dist
  end
  min_dist
end

File.foreach(ARGV.first) do |line|
  args = line.chomp.split(" ").map(&:to_i).drop(1)
  puts min_dist(args)
end
