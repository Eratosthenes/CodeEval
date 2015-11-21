#fizzbuzz = lambda{|x| [*1..x].map{|x| x%3==0 && x%5==0 ? 'fizzbuzz' 
#            : x%3==0? 'fizz' : x%5==0? 'buzz' : x}}

def fizzbuzz(x,y,n)
  [*1..n].map{|i| i%x==0 && i%y==0 ? 'FB' : i%x==0? 'F' : i%y==0? 'B' : i}.
  join(" ")
end

File.foreach(ARGV[0]) do |line|
  x,y,n = line.chomp.split(" ").map{|x| x.to_i}
  puts fizzbuzz(x,y,n)
end

