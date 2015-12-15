File.foreach(ARGV[0]) do |line|
  len, letters = line.chomp.split(',')
  len = len.to_i
  letters = letters.split(//)
  puts letters.repeated_permutation(len).to_a.uniq.map{|x| x.join()}.sort.join(',')
end
