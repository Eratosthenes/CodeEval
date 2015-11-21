$h = {"(" => ")", "[" => "]", "{" => "}"}
def valid_parentheses(str)
  stack=[]
  str.split(//).each do |letter|
    if "([{".split(//).include?(letter)
      stack << letter 
    else 
      return "False" if $h[stack.pop]!=letter
    end
  end
  "True"
end

puts valid_parentheses("()")
puts valid_parentheses("([)]")
