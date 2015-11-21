File.foreach(ARGV[0]) do |line|
  puts line.chomp.split(" ").reverse.join(" ")
end
