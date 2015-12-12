# this algo is not quite right... need to solve it for cases where cycle repeats toward very end
File.foreach(ARGV[0]) do |line|
  data=line.chomp.split(" ").map{|x| x.to_i}

  # find the period
  i = 0
  tortoise = data[0]
  hare = data[1]
  period = 1
  while tortoise != hare
    i+=1
    tortoise = data[i]
    hare = data[2*i]
    period = i if tortoise == hare
  end

  # find the cycle
  cycle = (period == data.length) ? [data[-1]] : []
  data.each_with_index do |n, i|
    from = data[i]  
    to = data[i+period]
    if to == from
      cycle = data[i...i+period] 
      break
    end
  end
  puts cycle.join(" ")
end

