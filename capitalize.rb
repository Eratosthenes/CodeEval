File.foreach(ARGV[0]) do |line|
  line=line.chomp.split(' ')
  line[0][0] = line[0][0].capitalize
  puts line.join(' ')
end
