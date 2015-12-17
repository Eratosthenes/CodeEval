File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(' ')
  line.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  puts line.join(' ')
end
