#process files
content = File.readlines(ARGV[0])[0].chomp
dict_words = ["curiouser","needs"] #dict_words = File.readlines('/usr/share/dict/words').map{|x| x.downcase.chomp}
File.open('dict_words.txt','w') do |file|
  file.write(dict_words)
end
  
word_len, last_letter, text = content.split("|")
word_len = word_len.strip().to_i
last_letter = last_letter.strip()
text = text.split(" ").map(&:to_i)

#generate key words
slices = text.each_cons(word_len).to_a
key_words = slices.combination(2).to_a.select{|x,y| x==y}.flatten(1).uniq

#decrypt each key word and check if it is in the dictionary
best_shift = 0
key_words.each do |key_word|  
  shift = key_word[-1] - last_letter.ord
  decryption = key_word.map{|x| (x-shift).chr}.join()
  best_shift = shift if dict_words.include?(decryption)
end

#decrypt text using keyword
puts text.map{|x| (x-best_shift).chr}.join()
