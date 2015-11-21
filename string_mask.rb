def string_mask(str, binary)
  binary = binary.split(//).map{|x| x.to_i}
  str.split(//).zip(binary).map{|x| x[1]==1 ? x[0].capitalize : x[0]}.join()
end

p string_mask("hello", "11001")
