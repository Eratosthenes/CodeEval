def reverse_and_add(n)
  count=0
  until n.to_s.reverse.to_i==n
    n=n+n.to_s.reverse.to_i
    count+=1
  end
  "#{count} #{n}"
end

puts reverse_and_add(195)
