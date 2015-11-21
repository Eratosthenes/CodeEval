def choose(n, r)
  (0...r).reduce(1){|m,i| (m * (n - i))/(i + 1)}
end

def pascals_tri(n)
  [*0...n].repeated_permutation(2).to_a.select{|x| x[1]<=x[0]}
  .map{|x| choose(x[0], x[1])}.join(" ")
end

puts pascals_tri(6)
