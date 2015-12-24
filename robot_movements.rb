# robot movements -- how many paths from top-left to bottom-right of 4x4 grid?

def generate_paths(start_pt, grid)
  i, j = start_pt[0], start_pt[1]
  return 0 if grid[i][j]
  return 1 if i==3 && j==3

  count = 0
  grid[i][j] = true
  count += generate_paths([i+1, j], grid) if i+1 <= 3
  count += generate_paths([i-1, j], grid) if i-1 >= 0
  count += generate_paths([i, j+1], grid) if j+1 <= 3
  count += generate_paths([i, j-1], grid) if j-1 >= 0
  grid[i][j] = false

  count
end

grid = Array.new(4){Array.new(4)}
puts generate_paths([0,0], grid)
