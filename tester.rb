File.foreach(ARGV.first) do |line|
  dev_str, design_str = line.split('|').map(&:strip).map{|x| x.split(//)}
  nbugs = dev_str.zip(design_str).select{|x,y| x!=y}.length
  result = case nbugs
    when 0 then "Done"
    when 1..2 then "Low"
    when 3..4 then "Medium"
    when 5..6 then "High"
    else 
      "Critical"
  end
  puts result
end
