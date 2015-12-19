File.foreach(ARGV[0]) do |line|
  #n = number of people
  #m = mth to be executed
  n, m = line.split(',').map(&:to_i)
  ppl = [*0..n-1]
  res = []
  i = m - 1
  until ppl.empty?
    #puts "ppl = #{ppl}, res = #{res}, i = #{i}"
    res << ppl[i]
    i += m
    if i >= ppl.length
      i = i % ppl.length
      ppl -= res 
    else
      i = i % ppl.length
    end
  end
  puts res.reject{|x| x.nil?}.join(' ')
end
