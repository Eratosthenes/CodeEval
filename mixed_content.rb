def mixed_content(str)
  words = str.split(",").select{|x| x.match(/[a-zA-Z]/)}.join(",")
  nums = str.split(",").select{|x| x.match(/[\d+]/)}.join(",")
  res = [words,nums].join("|")
  return res[1..-1] if res[0]=='|'
  return res[0...-1] if res[-1]=='|'
  res
end

File.foreach(ARGV[0]) do |line|
  line = line.chomp
  puts mixed_content(line)
end

