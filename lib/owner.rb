require 'pry'

class Owner
  attr_reader :species
  attr_accessor :name, :pets
  @@all = [ ]
  #@pets = { }
  #@count = 0

  def initialize(name)
    #@count += 1
    @name = name
    @species = "human"
    @pets = {:cats => [], :fishes => [], :dogs => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
    #@@all.clear
    #@count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish)
      @pets[:fishes] << Fish.new(fish)
  end

  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

  def walk_dogs
    #binding.pry
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
    # #access all the dogs in the hash assigned to @pets
    #how do I get at @mood from here? mood is a property of the dog class
    #overwrite the mood instance variable for all dogs in the hash to happy
  end

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    pets.clear
    pets.each_key do |mood|
      pets[].mood = "nervous"
    end
    #access all the pets for each key and set their mood back to nervous
    #access all pets (the key values in the array assigned to @pets)
    #remove the values for each of the three keys
  end

end
