#there is probably a better way to do this, but oh well
File.foreach(ARGV[0]) do |line|
  words = line.chomp.split(' ')

  res = [] 
  words.each do |word|
    word = word.split(//)
    deletions = []
    word.each_with_index do |letter, i|
      next if i==0
      deletions << i if word[i]==word[i-1]
    end

    count = 0
    deletions.each do |i|
      word.delete_at(i-count)
      count+=1
    end

    word = word.join()
    res << word
  end
  puts res.join(' ')
end

