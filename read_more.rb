File.foreach(ARGV.first) do |line|
  puts line.chomp.length <= 55 ? line.chomp : "#{line.chomp[0...40].strip}... <Read More>"
end
