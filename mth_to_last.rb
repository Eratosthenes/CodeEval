File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(" ")
  data, n = line[0...-1], line[-1].to_i
  puts data.reverse[n-1]
end
