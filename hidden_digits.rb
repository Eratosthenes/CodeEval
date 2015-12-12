$h = Hash[[*?a..?j].zip(*[0..9])]
File.foreach(ARGV.first) do |line|
  res=[];line.chomp.split(//).each do |letter|
    res << $h[letter] if [*?a..?j].include?(letter)
    res << letter if [*?0..?9].include?(letter)
  end
  puts res==[] ? "NONE" : res.join()
end

