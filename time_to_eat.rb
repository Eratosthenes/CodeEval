def convert(time)
  hrs, min, sec = time.split(':').map(&:to_i)
  hrs*3600 + min*60 + sec
end

File.foreach(ARGV.first) do |line|
  times = line.split(" ")
  h={}
  times.each do |time|
    h[time]=convert(time)
  end
  puts h.sort_by{|k,v| -v}.map{|x| x[0]}.join(" ")
end

