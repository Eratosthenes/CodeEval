require 'json'

File.foreach(ARGV[0]) do |line|
  h = JSON.parse(line)
  sum_ids = 0
  h["menu"]["items"].each do |item|
    next if item.nil?
    sum_ids += item["id"] if item["label"]
  end
  puts sum_ids
end
