File.foreach(ARGV[0]) do |line|
  text, re_str = line.chomp.split(',')

  re = "" 
  re_str.split(//).each_with_index do |letter, i|
    if letter != "*"
      re += letter 
    else
      re = (re_str[i-1] != "\\") ? re + ".*" : re + "*"
    end
  end

  puts !!text.match(/#{re}/)
end  
