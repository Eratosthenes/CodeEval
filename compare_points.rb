def hiking(x1,y1,x2,y2)
 return "here" if x1==x2 && y1==y2
 return "N" if y2-y1>0 && x2-x1==0
 return "S" if y2-y1<0 && x2-x1==0
 theta = Math.atan((y2-y1)/(x2-x1).to_f)
 return case 
 when y2-y1==0 && x2-x1>0
  "E"
 when theta.between?(0, Math::PI/2)
  "NE"
 when theta.between?(Math::PI/2, Math::PI)
  "NW"
 when y2-y1==0 && x2-x1<0
  "W"
 when theta.between?(Math::PI, 3*Math::PI/2)
  "SW"
 when theta.between?(3*Math::PI/2, 2*Math::PI)
  "SE"
 end
end

File.foreach(ARGV[0]) do |line|
  x1, y1, x2, y2 = line.chomp.split(' ').map(&:to_i)
  puts hiking(x1, y1, x2, y2)
end
