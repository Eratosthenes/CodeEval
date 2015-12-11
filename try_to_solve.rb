az = [*?a..?z]
first_half = az.take(13).zip(az.drop(13).drop(7)+az.drop(13).take(7))
h=Hash[first_half+first_half.map(&:reverse)]
File.foreach(ARGV.first) do |line|
  puts line.split(//).map{|x| h[x]}.join("")
end 
