cool_things = []

while cool_things.length < 3
    puts("Tell me a cool thing:")
    cool_things.push(gets.chomp)
end

puts("Here is what you think is cool:")
i=0
while i<cool_things.length
    puts(cool_things[i])
    i=i+1
end

