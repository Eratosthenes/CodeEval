#the capitalize function made capital letters inside the words lowercase (an unwanted effect)
File.foreach(ARGV[0]) do |line|
  words = line.chomp.split(' ')
  words.each{|word| word[0] = (word[0].ord-32).chr if [*?a..?z].include?(word[0])}
  puts words.join(' ')
end
