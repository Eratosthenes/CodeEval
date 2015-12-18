File.foreach(ARGV[0]) do |line|
  line = line.scan(/\d/).map(&:to_i)
  evens, odds = [], []
  line.each_with_index do |n, i|
    if i.even?
      evens << n 
    else
      odds << n
    end
  end
  sum = (evens.map{|x| 2*x} + odds).reduce(:+)
  puts (sum%10==0) ? "Real" : "Fake"
end
