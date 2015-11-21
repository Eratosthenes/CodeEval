def crazy_sum(numbers)
    for i in (0..numbers.length-1)
        numbers[i]=i*numbers[i]     
    end 
    return numbers.inject{|x,y| x+y}
end

#puts("crazy sum")
#puts(crazy_sum([2]))
#puts(crazy_sum([2, 3]))
#puts(crazy_sum([2, 3, 5]))
#puts(crazy_sum([2, 3, 5, 2]))

def square_nums(max)
    count = 0
    for i in (1..max)
        if i*i < max
            count +=1
        end
    end
    return count
end

#puts("square nums")
#puts(square_nums(5))
#puts(square_nums(10))
#puts(square_nums(25))

def crazy_nums(max)
    return [*1..max-1].select{|x| (x%3==0 || x%5==0) && (x%3 !=0 || x%5 !=0)}
end

#puts("crazy nums")
#puts(crazy_nums(3))
#puts(crazy_nums(10))
#puts(crazy_nums(20))

class Array
    def my_each(&prc)
        puts "error" if prc.nil?
        prc.call self
        self
    end
end

a=[*1..5]
p a.my_each{|x| puts x}
a.my_each do |x|
    puts x
end
p a
