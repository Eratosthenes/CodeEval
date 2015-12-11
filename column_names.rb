az=[*?A..?Z]
twos = az.repeated_permutation(2).to_a.map{|x| x.join()}
threes = az.repeated_permutation(3).to_a.map{|x| x.join()}
res = [""]+az+twos+threes

File.foreach(ARGV.first) do |line|
  puts res[line.to_i]
end
