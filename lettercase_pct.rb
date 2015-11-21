def lettercase_pct(str)
  lower = 100*str.scan(/[a-z]/).length/str.length.to_f
  upper = 100-lower
  "lowercase: %.2f uppercase: %.2f" % [lower,upper]
end

p lettercase_pct("thisTHIS")
p lettercase_pct("AAbbCCDDEE")
p lettercase_pct("N")
p lettercase_pct("UkJ")
