File.foreach(ARGV.first) do |line|
  line = line.chomp
  if line.length > 55
    line = line.split(' ')
    i=0
    res = []
    line.each do |word|
      i+=word.length+1
      res << word if i<40 || res.empty?
    end
    line=res.join(' ').strip()+"... <Read More>"
  end
  puts line
end
