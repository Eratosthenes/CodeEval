File.foreach(ARGV[0]) do |line|
  vec, n = line.chomp.split('|').map{|x| x.split(' ').map{|y| y.to_i}}
  i = iterations = 0
  until iterations == n[0]
    i += 1
    if vec[i-1] > vec[i]  
      tmp = vec[i]
      vec[i] = vec[i-1]
      vec[i-1] = tmp
      i = 0
      iterations += 1
    end
  end
  puts vec.join(' ')
end
