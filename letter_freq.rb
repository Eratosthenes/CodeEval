def letter_freq(str)
    h = Hash.new(0) 
    for letter in str.split(//)
        h[letter]+=1
    end
    h.sort_by{|k,v| -v}
end

def letter_freq2(str)
    a=[0]*26
    for letter in str.split(//)
        a[letter.ord-"a".ord]+=1
    end
    [*?a..?z].zip(a).sort_by{|k,v| -v}
end

p letter_freq2(ARGV.first.to_s)
