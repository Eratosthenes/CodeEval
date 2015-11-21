def lucky_sevens?(numbers)
    for i in (0..numbers.length-3)
        if numbers[i..i+2].inject{|x,y| x+y}==7
            return true
        end
    end
    return false
end

puts(lucky_sevens?([2,1,5,1,0]))
puts(lucky_sevens?([0,-2,1,8]))
puts(lucky_sevens?([7,7,7,7]))
puts(lucky_sevens?([3,4,3,4]))

def oddball_sum(numbers)
    n = numbers.select{|x| x%2==1}
    if n.length > 0
        return n.inject{|x,y| x+y}
    end
    return 0
end

puts(oddball_sum([1,2,3,4,5]))
puts(oddball_sum([0,6,4,4]))
puts(oddball_sum([1,2,1]))
    
def disemvowel(string)
    return string.split(//).select{|x| x!="a" && x!="e" && x!="i" && x!="o" && x!="u"}.join()
end

puts(disemvowel("foobar") == "fbr")
puts(disemvowel("ruby") == "rby")
puts(disemvowel("aeiou") == "")
