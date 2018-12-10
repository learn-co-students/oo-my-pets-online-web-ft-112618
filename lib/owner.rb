require 'pry'

class Owner
  attr_accessor :name, :fishes, :dogs, :cats
  @@all = []

  def initialize(species)
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets=(pets)
    @pets = pets
  end

  def pets
    @pets ||= {:fishes => [], :dogs => [], :cats => []}
    @pets
  end


  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    self.pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    #binding.pry
     self.pets.map {|type, pets| pets.map {|pet| pet.mood = "nervous"}}
     self.pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
