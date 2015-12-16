pseudo_nums = 
["-**----*--***--***---*---****--**--****--**---**--",
 "*--*--**-----*----*-*--*-*----*-------*-*--*-*--*-",
 "*--*---*---**---**--****-***--***----*---**---***-",
 "*--*---*--*-------*----*----*-*--*--*---*--*----*-",
 "-**---***-****-***-----*-***---**---*----**---**--",
 "--------------------------------------------------"]

File.foreach(ARGV[0]) do |line|
  line = line.scan(/\d/).map(&:to_i)

  graphic = []
  (0..5).each do |i|
    line.each do |n|
      idx = n*5
      graphic << pseudo_nums[i][idx...idx+5]
    end
    graphic << '|'
  end

  puts graphic.join().split('|')
end
