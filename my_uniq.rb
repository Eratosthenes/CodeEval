my_uniq = lambda{|data| [*data.min..data.max].select{|x| data.include?(x)}}

p "hello kitty".split(//)
p my_uniq.call("hello kitty".split(//))

data = [1,2,1,3,3,5]
p data
p my_uniq.call(data)

