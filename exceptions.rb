def start_summer
  raise "overheated!"
end

begin
  start_summer
rescue Exception => e
  p e.message
  p e.inspect
  puts "It's cool in here, boy."
end
