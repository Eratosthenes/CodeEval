# this one finally works
File.foreach(ARGV[0]) do |line|
  data=line.chomp.split(" ").map{|x| x.to_i}.reverse
  len = data.length
  #p data

  # find the period
  i = 0
  tortoise = data[0]
  hare = data[1]
  period = 1
  while tortoise != hare
    i+=1
    tortoise = data[i%len]
    hare = data[(2*i)%len]
    #puts "tortoise=#{tortoise} hare=#{hare}"
    period = ((2*i)%len - i%len).abs if tortoise == hare
  end
  #puts "period=#{period}"

  # find the cycle
  cycle = (period == len) ? [data[-1]] : []
  data.each_with_index do |n, i|
    from = data[i]  
    to = data[i+period]
    if to == from
      cycle = data[i...i+period] 
      break
    end
  end
  puts cycle.reverse.join(" ")
end

