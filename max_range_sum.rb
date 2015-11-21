File.foreach(ARGV[0]) do |line|
  ndays, gains = line.chomp.split(";").map{|x| x.split(" ")}
  ndays.map!{|x| x.to_i}
  puts [0, gains.map{|x| x.to_i}.each_cons(*ndays).to_a.map{|x| x.reduce(:+)}.max].max
end

