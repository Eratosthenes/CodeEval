File.foreach(ARGV.first) do |line|
  sorted = line.chomp.split(" ").map(&:to_f).sort
  res = []
  sorted.each do |n|
    res << '%.3f'%n
  end
  puts res.join(" ")
end
