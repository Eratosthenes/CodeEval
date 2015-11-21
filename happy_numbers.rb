happify=->(n){n.to_s.split(//).map{|x| x.to_i**2}.reduce(:+)}
File.foreach(ARGV.first) do |line|
  n=line.chomp.to_i
  n=happify.call(n) until n<10 
  puts n==1||n==7 ? 1 : 0
end
