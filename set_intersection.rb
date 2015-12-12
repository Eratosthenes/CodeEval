File.foreach(ARGV[0]) do |line|
  s1, s2 = line.chomp.split(';').map{|x| x.split(',').map{|x| x.to_i}}
  puts (s1&s2).join(',')
end
