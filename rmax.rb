def rmax(arr)
    lhs = arr[0..arr.length/2]
    rhs = arr[arr.length/2..-1]
    return arr.max if arr.length==2
    return [rmax(lhs),rmax(rhs)].max
end

input = [44,31,24,32,35,30,40,38]
#p input
#p rmax(input)

def profitmax(arr)
    lhs = arr[0..arr.length/2-1]
    rhs = arr[arr.length/2..-1]
    return 0 if arr.length == 1
    return [profitmax(lhs), profitmax(rhs), rhs.max-lhs.min].max
end

p profitmax(input)
