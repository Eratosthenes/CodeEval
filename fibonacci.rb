def fibonacci n
  return n if n<2
  fibonacci(n-1)+ fibonacci(n-2)
end

File.foreach(ARGV[0]) do |line|
  n = line.to_i
  puts fibonacci n
end
