#uses greedy method... not sure if it will always get the min
coins = [5, 3, 1]
File.foreach(ARGV[0]) do |line|
  total = line.to_i

  res = [0]
  coins.each do |coin|
    while total >= coin + res.reduce(:+)
      res << coin
    end
  end
  puts res.length-1
end
