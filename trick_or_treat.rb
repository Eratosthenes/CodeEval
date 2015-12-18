File.foreach(ARGV[0]) do |line|
  v,z,w,h = line.scan(/\d+/).map(&:to_i)
  puts (3*v+4*z+5*w)*h/(v+z+w)
end
