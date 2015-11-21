class Dog

  def self.all
    @dogs ||= []
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

end

d1 = Dog.new("fido")
d2 = Dog.new("earl")

p Dog.all


  
