File.foreach(ARGV[0]) do |line|
  puts (line =~ /\w+@\w+\.\w+/)==0
end
