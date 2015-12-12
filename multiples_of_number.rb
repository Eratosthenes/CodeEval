File.foreach(ARGV[0]) do |line|
  target, n = line.chomp.split(',').map(&:to_i)
  until n >= target
    n+=n
  end
  puts n
end
