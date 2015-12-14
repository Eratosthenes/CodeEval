def hiking(x1,y1,x2,y2)
 return case 
 when y2==y1 && x2==x1
  "here"
 when y2>y1 && x2==x1
  "N"
 when y2<y1 && x2==x1
  "S"
  when y1==y2 && x2>x1
  "E"
 when y1==y2 && x2<x1
  "W"
 when x2>x1 && y2>y1
  "NE"
 when x2<x1 && y2>y1
  "NW"
  when x2<x1 && y2<y1
  "SW"
 when x2>x1 && y2<y1
  "SE"
 end
end

File.foreach(ARGV[0]) do |line|
  x1, y1, x2, y2 = line.split(' ').map(&:to_i)
  puts hiking(x1,y1,x2,y2)
end
