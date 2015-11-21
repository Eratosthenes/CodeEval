def stepwise_word(str)
  res=[]
  str.split(//).each.with_index{|x,i| res << ['*'*i, x]}
  res.map{|x| x.join()}.join(" ")
end

p stepwise_word("hello")
