File.foreach(ARGV[0]) do |line|
  text = line.chomp.downcase.gsub(/[^a-z]/,"").split(//)
  res = []
  text.uniq.each do |letter|
    res << text.count(letter)
  end
  pairs = res.sort.reverse.zip([*1..26].reverse)
  puts pairs.map{|x,y| x*y}.reduce(:+)
end
