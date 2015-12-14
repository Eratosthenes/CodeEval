def stepwise_word(str)
  res=""
  str.split(//).each.with_index{|x,i| res += '*'*i+"#{x} "}
  res
end

File.foreach(ARGV[0]) do |line|
  max_word = line.chomp.split(" ").max_by(&:length)
  puts stepwise_word(max_word)
end
