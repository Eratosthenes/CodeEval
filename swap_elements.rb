File.foreach(ARGV.first) do |line|
  nums, pairs = line.chomp.split(":")
  nums = nums.split(" ").map{|x| x.to_i}
  pairs = pairs.split(",").map{|x| x.split("-").map{|y| y.to_i}}
  pairs.each do |pair|
    nums[pair[0]], nums[pair[1]] = nums[pair[1]], nums[pair[0]]
  end
  puts nums.join(" ")
end
