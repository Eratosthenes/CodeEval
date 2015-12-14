File.foreach(ARGV[0]) do |line|
  wines, letters = line.chomp.split('|').map(&:strip)
  wines = wines.split(' ')
  selection = wines.select{|wine| wine.include?(letters)}
  puts selection.empty? ? "False" : selection.join(' ')
end

