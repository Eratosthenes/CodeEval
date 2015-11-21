mults=->(i){[*1..12].map{|x| x*i}}
res=[]
[*1..12].each{|x| res<<mults.call(x)}
res.each{|x| puts ("%4d "*12)%x}

