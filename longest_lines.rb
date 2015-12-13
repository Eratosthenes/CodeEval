contents = File.readlines(ARGV[0])
n, lines = contents[0].to_i, contents[1..-1].sort_by(&:length)
lines[-n..-1].reverse.each{|line| puts line}
