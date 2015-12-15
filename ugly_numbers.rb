# try a recursive approach to generating the 3^(D-1) partitions?
#  - will probably end up with a stack overflow though... 13 digits is too many
# need a clever way of reducing the search space... meh
File.foreach(ARGV[0]) do |line|
  p line.chomp
end
