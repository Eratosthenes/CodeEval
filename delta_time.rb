def convert_from_hh_mm_ss(hr, min, sec)
  sec + 60*min + 3600*hr
end

def convert_to_hh_mm_ss(sec)
  hr = sec/3600
  min = (sec - hr*3600)/60
  sec = sec - hr*3600 - min*60
  [hr, min, sec]
end

File.foreach(ARGV[0]) do |line|
  line = line.chomp.split(' ').map{|x| x.split(':').map{|x| x.to_i}}
  delta = line.map{|x| convert_from_hh_mm_ss(*x)}.reduce(:-).abs
  puts ("%02d:"*3 % convert_to_hh_mm_ss(delta))[0...-1]
end
