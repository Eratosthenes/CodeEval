File.foreach(ARGV[0]) do |line|
  arr = line.split(' ').map(&:to_i)

  res = []
  i = 0
  while i < arr.length
    count = 1
    n = arr[i]
    until arr[i]!=arr[i+1]
      count+=1   
      i+=1
    end
    i+=1
    res += [count, n]
  end

  puts res.join(" ") 
end
