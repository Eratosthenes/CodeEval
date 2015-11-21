require 'prime'
File.foreach(ARGV[0]) do |line|
  res=[]
  puts Prime.each(line.chomp.to_i){|p| res<<p}.join(",")
end
