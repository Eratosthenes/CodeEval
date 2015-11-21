File.foreach(ARGV.first) do |line|
  line = line.chomp.split(//).each_cons(5).to_a.map{|x| x.join()}
  puts line.count(">>-->")+line.count("<--<<")
end
