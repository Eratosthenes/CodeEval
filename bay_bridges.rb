#returns point of intersection
def intersect(n1, n2)
  return nil if $m[n1] == $m[n2]
  x = ($b[n1]-$b[n2])/($m[n2]-$m[n1])
  y = $m[n1]*x + $b[n1]
  [x, y]
end

#only care about intersections that are between both bridges' two points
def intersection?(n1, n2)
  ix, iy = intersect(n1, n2)
  intersects = []
  [n1, n2].each do |n|
    x1, x2 = [$ln[n][0][0], $ln[n][1][0]].sort
    y1, y2 = [$ln[n][0][1], $ln[n][1][1]].sort
    intersects << ix.between?(x1, x2) && iy.between?(y1, y2)
  end
  intersects.all?
end

$ln = {}
$m = {}
$b = {}
File.foreach(ARGV[0]) do |line|
  n, pts = line.split(':')
  n = n.to_i
  x1, y1, x2, y2 = pts.chomp.gsub(/[\(\)\[\]]/,'').split(',').map(&:to_f)
  $ln[n] = [[x1, y1], [x2, y2]]
  $m[n] = (y2-y1)/(x2-x1)
  $b[n] = y1 - $m[n]*x1
end

#bridge_intersections = { 1 => [2, 4], 4 => [1], 2 => [1], ... etc}
bridge_intersections = Hash.new{|h,k| h[k]=[]}
n_bridges = $ln.keys.length
pairs = [*1..n_bridges].combination(2).to_a
pairs.each do |pair|
  n1, n2 = pair[0], pair[1]
  if intersection?(n1, n2)
    bridge_intersections[n1] << n2
    bridge_intersections[n2] << n1
  end
end

#remove bridges with the most intersections until no intersections are left
bridges = [*1..n_bridges]
bridge_intersections.sort_by{|k, v| -v.length}.each do |k, v|
  break if bridge_intersections.values.all?{|x| x.empty?}
  bridge_intersections[k].dup.each do |n|
    bridges.delete_at(bridges.index(k)) if bridges.index(k)
    bridge_intersections[n].delete_at(bridge_intersections[n].index(k)) #delete the value of other bridge
    bridge_intersections[k].delete_at(bridge_intersections[k].index(n)) #delete the value of current bridge
  end
end

puts bridges 
