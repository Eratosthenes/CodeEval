File.foreach(ARGV[0]) do |line|
  puts line.chomp.split(//).permutation.to_a.map{|x| x.join}.sort.join(",")
end
