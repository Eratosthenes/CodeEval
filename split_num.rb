File.foreach(ARGV.first) do |line|
  nums, letters = line.chomp.split(" ")
  sym = letters.include?("+") ? "+" : "-"
  res=[];i=0;letters.split(//).each do |char|
    if char!=sym
      res << nums[i] 
    else
      res << sym
      i-=1
    end
    i+=1
  end
  first, last = res.join().split(sym)
  last = last.to_i.to_s
  puts eval([first,sym,last].join())
end
