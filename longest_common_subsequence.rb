def find_longest_asc(vec) # returns the longest contiguous subsequence
  count = max_count = 0
  start_idx = end_idx = 0
  vec[0...-1].each_with_index do |idx, i|
    if idx < vec[i+1]
      count +=1
      if count > max_count
	max_count = count
	end_idx = i+1
	start_idx = end_idx - max_count
      end
    else
      count = 0
    end
  end
  vec[start_idx..end_idx]
end

File.foreach(ARGV[0]) do |line|
  first, second = line.chomp.split(';').map{|x| x.split(//)}
  intersect = first&second

  first_idx = intersect.map{|x| first.index(x)}
  second_idx = intersect.map{|x| second.index(x)}

  first_asc = find_longest_asc(first_idx) 
  second_asc = find_longest_asc(second_idx)

  if first_asc.length < second_asc.length
    puts first_asc.map{|x| first[x]}.join()  
  else
    puts second_asc.map{|x| second[x]}.join()  
  end
end
