File.foreach(ARGV.first) do |line|
  str,positions = line.chomp.split("|")
  positions = positions.strip.split(" ").map{|x| x.to_i-1}
  res=[]
  positions.each{|i| res<<str[i]}
  puts res.join()
end
