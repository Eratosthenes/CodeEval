File.foreach(ARGV.first) do |line|
  nums, sum = line.chomp.split(";")
  nums = nums.split(",").map{|x| x.to_i}
  pairs = nums.combination(2).select{|x| x.reduce(:+)==sum.to_i}
  puts pairs==[]? "NULL" : pairs.map{|x| x.join(",")}.join(";")
end
