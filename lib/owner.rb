class Owner
 attr_accessor :pets, :name
 attr_reader :species
 @@all = []
 
 def initialize(species)
   @pets = {fishes: [], cats: [], dogs: []}
   @@all << self
   @species = species
 end
 
 def pets
   @pets
 end
 
 def self.all
   @@all
 end
 
 def self.name(name)
   @name = name
 end
 
 def self.count
   self.all.count
 end
 
 def self.reset_all
   self.all.clear
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
 
 def walk_dogs
   pets[:dogs].each {|dog| dog.mood = "happy"}
 end
  
 def play_with_cats
   pets[:cats].each {|cat| cat.mood = "happy"}
 end
 
 def feed_fish
   pets[:fishes].each {|fish| fish.mood = "happy"}
 end
 
 def say_species
   "I am a #{species}."
 end
 
 def sell_pets
   pets.each do |species, animals|
     animals.each do |animal|
       animal.mood = "nervous"
     end
      animals.clear
   end
  end     
     
 def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
 end 
 
end