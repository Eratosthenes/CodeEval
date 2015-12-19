File.foreach(ARGV[0]) do |line|
  #n = number of people
  #m = mth to be executed
  n, m = line.split(',').map(&:to_i)
  ppl = [*0..n-1]
  res = []
  i = m - 1
  n.times do 
    res << ppl[i] 
    ppl.delete_at(i)
    i = (i-1+m)%ppl.length unless ppl.empty?
  end
  puts res.join(' ')
end
