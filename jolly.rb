def is_jolly?(line, len)
  res = []
  line.each.with_index do |n, i|
    next if i==0
    res << (n-line[i-1]).abs
  end  
  res.uniq.sort == [*1..line.length-1] ? "Jolly" : "Not jolly"
end

File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(' ').map(&:to_i)
  len, data = line[0], line[1..-1]
  puts is_jolly?(data, len)
end

