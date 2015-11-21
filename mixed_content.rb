content = "8,33,21,0,16,50,37,0,melon,7,apricot,peach,pineapple,17,21"
def mixed_content(str)
  words = str.split(",").select{|x| x.match(/[a-z]/)}.join(",")
  nums = str.split(",").select{|x| x.match(/[\d+]/)}.join(",")
  [words,nums].join("|")
end

p mixed_content(content)
