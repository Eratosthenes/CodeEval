File.foreach(ARGV[0]) do |line|
    data, modifier = line.chomp.split(",")
    modifier = modifier.gsub(/[^\w]/,"").split(//)
    p modifier
      for letter in modifier
        data=data.gsub(/[letter]/,"")
      end
    puts data
end
