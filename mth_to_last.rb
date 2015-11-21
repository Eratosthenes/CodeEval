File.foreach(ARGV[0]) do |line|
  data, m = line.chomp.split(" ")[0...-1], line.chomp.split(//)[-1].to_i
  if m < data.length 
    puts data[m] 
  else 
    puts data[0]
  end
end
