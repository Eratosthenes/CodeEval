#Problem:

#Write a method that takes an array of stock prices (prices on days
#0, 1, ...), and outputs the most profitable pair of days on which to
#first buy the stock and then sell the stock, e.g.: stock_picker([ 44,
#30, 24, 32, 35, 30, 40, 38 ] ) == [ 2, 6 ]

def stock_picker(prices)
    pairs = prices.combination(2).to_a
    max_price_change =0
    best_days=[]
    for x,y in pairs
        price_change = (y-x)/x.to_f
        idx, idy = prices.index(x), prices.index(y)
        if price_change > max_price_change && idx<idy
            max_price_change = price_change
            best_days = [idx, idy]
        end
    end
    best_days
end

p stock_picker([44,30,24,32,35,30,40,38,1])

#functional alternative
def stock_picker2(prices)
    pairs = prices.combination(2).to_a
    price_changes = pairs.map{|x,y| (y-x)/x.to_f}
    pairs[price_changes.index(price_changes.max)].map{|x| prices.index(x)}
end

p stock_picker2([44,30,24,32,35,30,40,38,1])
