File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(' ').map(&:to_i)
  uniqs = []
  line.each do |n|
    uniqs << n if line.index(n)==line.length - 1 - line.reverse.index(n)
  end
  puts uniqs.empty? ? 0 : line.index(uniqs.min) + 1
end
