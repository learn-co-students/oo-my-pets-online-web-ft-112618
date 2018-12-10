require"pry"

class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end 
  

  def self.all 
    @@all
  end 
  def self.count
    @@all.count
  end 
  def self.reset_all
    @@all.clear
  end 
  

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end 
  
  def sell_pets
    pets.each do |pet, data| 
      data.each {|data| data.mood = "nervous"}
    end
    self.pets.clear
  end 
  
  
  def say_species
    "I am a #{species}."
  end 
  
  def walk_dogs
    pets[:dogs].each {|data| data.mood = "happy"}
  end 
  
  def play_with_cats
    pets[:cats].each {|data| data.mood = "happy"}
  end 
  
  def feed_fish
    pets[:fishes].each {|data| data.mood = "happy"}
  end 
  
  def list_pets
      "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
  end 
    puts "testing, wont submit"
end

