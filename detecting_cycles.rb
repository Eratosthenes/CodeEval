File.foreach(ARGV[0]) do |line|
  data=line.chomp.split(" ").map{|x| x.to_i}
  cycles=chunks=[]
  [*0..data.length].each do |i|
    [*1..data.length].each do |j|
      chunks<<data[i..j]
    end
  end
  cycles<<chunks.uniq.find{|x| chunks.count(x)>1}
  p cycles
end

