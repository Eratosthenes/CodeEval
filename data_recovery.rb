File.foreach(ARGV[0]) do |line|
  words, nums = line.chomp.split(';')
  words = words.split(' ')
  nums = nums.split(' ').map(&:to_i)
  nums += [*1..words.length]-nums
  puts words.zip(nums).sort_by{|x,y| y}.map{|x,y| x}.join(' ')
end
