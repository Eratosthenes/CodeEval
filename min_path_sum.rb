# put the matrices into big_m
m = big_m = []
count = nil
File.foreach(ARGV.first) do |line|
  if line.strip().length == 1
    count = line.to_i
    m = []
    next
  end
  m += [line.split(',').map(&:to_i)]
  count -= 1
  big_m += [m] if count == 0
end

def find_min_path(m)
  min_m = Array.new(m.length){Array.new(m.length)}
  m.each.with_index do |row, i|
    row.each.with_index do |el, j|
      min_m[i][j] = case
      when i==0 && j==0
	el 
      when i==0 && j!=0
	el + min_m[i][j-1]
      when i!=0 && j==0
	el + min_m[i-1][j]
      when i!=0 && j!=0
	el + [min_m[i][j-1], min_m[i-1][j]].min
      end
    end
  end
  min_m[-1][-1]
end

# find min paths for each matrix
big_m.each do |m|
  puts find_min_path(m)
end
