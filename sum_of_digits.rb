File.foreach(ARGV[0]) do |line|
  puts line.chomp.split(//).map{|x| x.to_i}.reduce(:+)
end
