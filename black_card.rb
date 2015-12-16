File.foreach(ARGV[0]) do |line|
  names, n = line.chomp.split('|').map{|x| x.strip()}
  names = names.split(' ')
  n = n.to_i - 1

  until names.length == 1
    names.delete_at(n%names.length)
  end
  puts names
end
