def substrings_pal(word)
    word = word.split(//)
    res =[]
    for slice_size in (1..word.length)
        for i in (0..word.length-1)
            res << word.slice(i, slice_size).join()
        end
    end
    res.uniq.select{|x| x.reverse == x}
end
substring = lambda{|str| [*1..str.length].map{|x| str.split(//)
                .each_cons(x).to_a.map{|x| x.join()}}.flatten} 

#p substrings("cat")
#p substrings("nathan")
p substrings_pal("aba1cdc")

#p substring.call("cat")
#p substring.call("nathan")

#the two methods are subtly different

def substrings(word)
  word = word.split(//)
  subs = [*1..word.length].map{|x| word.each_cons(x).to_a.map(&:join)}.flatten
  subs.select{|x| x.reverse == x}.select{|x| x.length > 1}
end

p substrings("aba1cdc")
