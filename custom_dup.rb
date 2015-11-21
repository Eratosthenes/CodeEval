def dup a
  h={}
  a.each.with_index do |x,i|
    if a.count(x)>1
      if h[x].nil?
	h[x]=i
      else
	h[x]=[h[x]]+[i]
      end
    end
  end
  h
end

p dup [1,3,0,3]
