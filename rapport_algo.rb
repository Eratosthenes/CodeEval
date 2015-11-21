class Array
  def max_cum_sum_idx
    cum_sum = best_idx = 0
    max_cum_sum = first
    each.with_index do |el, i|
      cum_sum += el
      if cum_sum >= max_cum_sum
	max_cum_sum = cum_sum 
	best_idx = i
      end
    end
    best_idx
  end

#  def max_cs_idx
#    cs = reduce([]){|x,y| x << x.last.to_i + y}
#    cs.index(cs.max)
#  end

  def largest_sub_sum
    i = length - 1 - reverse.max_cum_sum_idx
    j = max_cum_sum_idx
    p "i=#{i}, j=#{j}"
    self[i..j].reduce(:+)
  end

end

p [-2, 1, -3, 4, -1, 2, 1, -5, 4].largest_sub_sum
p [-1, 5, 3,-7, 10, 10, 2].largest_sub_sum
