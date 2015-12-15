File.foreach(ARGV[0]) do |line|
  vec = line.chomp.split(//).map(&:to_i)
  truthiness = vec.map{|x| x**vec.length}.reduce(:+) == vec.join().to_i
  puts truthiness.to_s.capitalize
end
