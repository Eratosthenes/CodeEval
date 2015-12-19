#some edge case isn't working; not sure what though
def convert_to_doublespeak(word, doublespeak_word)
  word, doublespeak_word = word.split(//), doublespeak_word.split(//)
  res = []
  i = 0
  word.each do |letter|
    if letter == doublespeak_word[i]
      i+=1
      res << letter
    elsif letter == " "
      res << letter
    else
      res << "_"
    end
  end
  res.join()
end

File.foreach(ARGV[0]) do |line|
  utterance, doublespeak = line.chomp.split(';').map{|x| x.split(' ')}
  doublespeak = "" if doublespeak.nil?

  i = 0
  res = []
  utterance.each do |word|
    if i < doublespeak.length && word.include?(doublespeak[i])
      res << convert_to_doublespeak(word, doublespeak[i])
      i+=1
    else
      res << '_'*word.length
    end
  end
  puts (i<doublespeak.length) ? "I cannot fix history" : res.join(' ')
end
