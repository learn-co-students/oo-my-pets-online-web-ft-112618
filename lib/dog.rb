class Dog
  # code goes here
  attr_accessor :name, :mood

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def name=(name)
    raise NoMethodError if name
  end
end
