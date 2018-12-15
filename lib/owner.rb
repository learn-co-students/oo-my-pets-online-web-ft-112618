require 'pry'
class Owner
 
 attr_accessor :pets, :owner_count , :name 
 attr_reader :species
 @@all = []
 @@count = 0
 
 def initialize(species)
   @pets = {fishes: [], cats: [], dogs: []}
   self.class.all << self
   @@count += 1
   @species = species
   @name = name
 end
 
 def self.all
  @@all
 end
 
 def say_species
   "I am a #{self.species}."
 end
 
 def self.count
   @@count
 end
 
 def self.reset_all
  @@count = 0
 end
 
 def buy_fish(name)
   new_fish = Fish.new(name) 
   self.pets[:fishes] << new_fish 
 end
 
  def buy_cat(name)
   new_cat = Cat.new(name) 
   self.pets[:cats] << new_cat 
 end
 
  def buy_dog(name)
   new_dog =Dog.new(name) 
   self.pets[:dogs] << new_dog 
 end
 
 def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"} 
 end
 
 def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"} 
 end
 
 def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"} 
 end
 
 def sell_pets
   @pets.each do |species,pet|
      pet.map do |x|
        x.mood = "nervous"
      end  
       pet.clear
    end
 end
 
 def list_pets
  "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
 end
end