File.foreach(ARGV.first) do |line|
  a = line.chomp.split(",").map{|x| x.to_i}
  h = Hash[a.zip(a.map{|x| a.count(x)})]
  sorted_h = h.sort_by{|k,v| -v}
  puts sorted_h[0][1]==sorted_h[1][1] ? "None" : sorted_h[0][0]
end
