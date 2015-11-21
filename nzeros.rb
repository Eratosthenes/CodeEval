File.foreach(ARGV.first) do |line|
  nzeros, range = line.chomp.split(" ").map{|x| x.to_i}
  puts [*1..range].map{|x| x.to_s(2)}.select{|x| x.count("0")==nzeros}
  .length
end

