def is_jolly?(a)
  a.drop(1).map{|x| (x-a.first).abs}.sort==[*1...a.length] ? "Jolly" : "Not jolly"
end

p is_jolly?([1,4,2,3])
p is_jolly?([7,7,8])
