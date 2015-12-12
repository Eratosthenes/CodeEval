def mixed_content(str)
  words = str.split(",").select{|x| x.match(/[a-zA-Z]/)}.join(",")
  nums = str.split(",").select{|x| x.match(/[\d+]/)}.join(",")
  [words,nums].join("|")
end

File.foreach(ARGV[0]) do |line|
  puts mixed_content(line.chomp)
end

