# use a fourier something? fast fourier transform?
File.foreach(ARGV[0]) do |line|
  vec = line.split(' ').map(&:to_i)
  p vec.length
end
