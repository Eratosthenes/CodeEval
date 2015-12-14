#can't brute force it; not enough time or memory

class Node
  attr_accessor :parent, :block, :letter
  def initialize(block, letter, parent = nil)
    @value = value
    @parent = parent
  end
end

def evaluate(word, blocks)
  #need to do a bfs
  i = 0
  root = Node.new(word[i])
  queue = [root]
  until queue.empty?
    current_node = queue.pop
    if i<word.length
    
    end
  end
end

File.foreach(ARGV[0]) do |line|
  n_blocks, word, blocks = line.chomp.split('|')
  n_blocks = n_blocks.strip().to_i
  word = word.strip()
  blocks = blocks.split(' ')

end
