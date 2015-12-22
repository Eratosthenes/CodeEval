File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(' ').each_slice(2).to_a
  p line
  line.each do |pair|
    flag, seq = pair[0], pair[1]
    p flag
  end
end
