def compressed_seq(arr)
  res=[];(0...arr.length).each do |i|
    if arr[i]!=arr[i+1] 
      count, j = 1, i
      until arr[j-1]!=arr[j]
        count+=1 
        j-=1
      end
      res << count
      res << arr[i] 
    end
  end
  res.join(" ")
end

puts compressed_seq([1,1,3,3,3,2,2,2,2,14,14,14,11,11,11,2])
