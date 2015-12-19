File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(//)
  i=0
  line.each do |letter|
    if !!(letter =~ /\w/)
      letter.upcase! if i.even?
      i+=1
    end
  end
  puts line.join()
end
