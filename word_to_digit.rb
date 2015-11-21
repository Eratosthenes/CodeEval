$h=Hash[%w{zero one two three four five six seven eight nine}.zip([*0..9])]

def word_to_digit(str)
  str.split(";").map{|x| $h[x]}.join()
end

p word_to_digit("zero;two;five;seven;eight;four")
