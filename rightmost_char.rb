File.foreach(ARGV[0]) do |line|
  words, char = line.chomp.split(',')
  if words.reverse.index(char).nil?
    puts -1
  else
    puts words.length - words.reverse.index(char) - 1
  end
end
