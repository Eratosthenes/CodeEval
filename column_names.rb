$h=Hash[[*0..26].zip([""]+[*?A..?Z])]
$pairs = [*0..26].repeated_permutation(3).to_a
def column_name(n)
  res=[];$pairs.each do |pair|
    res<<pair.map{|x| $h[x]}.join()
  end
  res.uniq[n]
end

puts column_name(52)
puts column_name(3702)
