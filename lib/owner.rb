class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @pets = { :fishes => [], :dogs => [], :cats => [] }
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.length
  end

  def self.reset_all
    self.all.clear
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    self.pets[:fishes] << Fish.new(fish)    
  end

  def buy_cat(cat)
    self.pets[:cats] << Cat.new(cat)
  end

  def buy_dog(dog)
    self.pets[:dogs] << Dog.new(dog)
  end

  def set_mood(pets, new_mood)
    pets.map { |pet| pet.mood = new_mood }
  end
  
  def walk_dogs    
    set_mood(self.pets[:dogs], 'happy')
  end

  def play_with_cats
    set_mood(self.pets[:cats], 'happy')
  end

  def feed_fish
    set_mood(self.pets[:fishes], 'happy')
  end

  def sell_pets
    set_mood(self.pets.values.flatten, 'nervous')
    self.pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."    
  end
end
