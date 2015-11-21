### Cats 'n Hats ###
# You have 100 cats (You are quite lucky to own so many cats!).

# You have arranged all your cats in a line. Initially, none of your cats
# have any hats. You take 100 rounds walking around the cats, always starting
# at the beginning. Every time you stop at a cat, you put a hat on it if it
# doesn't have one, and you take its hat off if it has one on.

# The first round, you stop at every cat. The second round, you only stop at
# every 2nd cat (#2, #4, #6, #8, etc.). The third round, you only stop at
# every 3rd cat (#3, #6, #9, #12, etc.). You continue this process until the
# 100th round (i.e. you only visit the 100th cat).

# Write a program that prints which cats have hats at the end.
def kitties()
    cats=[0]*100
    mults = lambda{|n| [*1..100/n].map{|x| x*n}}
    for i in [*1..100]
        for j in mults.call(i)
            cats[j-1]==0 ? cats[j-1]=1 : cats[j-1]=0
        end
    end
    cats.map.with_index{|x,i| i if x>0}.select{|x| x!=nil}
end
p kitties()
