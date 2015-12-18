File.foreach(ARGV[0]){|line| puts line.chomp.split(',').map{|x| x.scan(/X{1}\.*Y{1}/)}.flatten.map{|x| x.count('.')}.min}
