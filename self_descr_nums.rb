def self_desc(n)
  a=n.to_s.split(//).map{|x| x.to_i}
  a.each.with_index.all?{|x,i| a.count(i)==x} ? 1 : 0
end

p self_desc(2020)
p self_desc(22)
p self_desc(1210)
