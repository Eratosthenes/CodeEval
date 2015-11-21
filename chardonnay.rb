def wine_type(wines, letters)
  res=[]; wines.split(" ").each do |wine|
    res<<wine if letters.split(//).all?{|x| wine.include?(x)}
  end
  res!=[] ? res.join(" ") : "False"
end

p wine_type("cabernet merlot noir","ot")
p wine_type("chardonnay sauvignon","ann")
p wine_type("shiraz grenache", "o")
