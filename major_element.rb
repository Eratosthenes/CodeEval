File.foreach(ARGV.first) do |line|
  a = line.chomp.split(",").map(&:to_i)
  h = Hash[a.zip(a.map{|x| a.count(x)})].sort_by{|k,v| -v}
  puts h[0][1]> a.length/2 ? h[0][0] : "None" 
end
