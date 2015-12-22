File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(' ').each_slice(2).to_a
  res = []
  line.each do |pair|
    flag, seq = pair[0], pair[1]
    if flag == "0"
      res << "0"*seq.length
    else
      res << "1"*seq.length
    end
  end
  puts res.join().to_i(2)
end
