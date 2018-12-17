class Owner
  # code goes
  attr_accessor :species, :name, :pets
  @@all = []

  def initialize(species = "human")
      @species = species
      instance = self
      @pets = {cats: [], dogs: [], fishes: []}
      @@all << instance
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fishInstance = Fish.new(name)
    @pets[:fishes] << fishInstance
  end

  def buy_cat(name)
    catInstance = Cat.new(name)
    @pets[:cats] << catInstance
  end

  def buy_dog(name)
    dogInstance = Dog.new(name)
    @pets[:dogs] << dogInstance
  end

  def self.all
    @@all
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end

  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    @pets.each{|petSpecies, pet|
      pet.each do |namedPet|
        namedPet.mood = "nervous"
      end}
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def species=(species)
    raise NoMethodError if species
  end

  def species
    @species = "human"
  end
end
