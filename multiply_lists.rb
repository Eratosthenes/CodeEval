File.foreach(ARGV.first) do |line|
    a,b = line.chomp.split("|").map{|x| x.split(" ").map{|x| x.to_i}}
    puts a.zip(b).map{|x| x.reduce(:*)}.join(" ")
end
