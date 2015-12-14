File.foreach(ARGV[0]) do |line|
  target, n = line.chomp.split(',').map(&:to_i)
  m=n
  m+=n while m < target
  puts m
end
