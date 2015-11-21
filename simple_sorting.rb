File.foreach(ARGV.first) do |line|
  puts line.chomp.split(" ").map{|x| x.to_f}.sort.to_s.gsub(/[\[\]]/,"")
end
