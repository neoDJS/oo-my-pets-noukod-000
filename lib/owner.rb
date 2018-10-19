class Owner
  # code goes here
  @@all = []
  attr_accessor :name
  attr_reader :species
  def initialize(species="")
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets.dup.freeze
  end

  def buy_fish(name="")
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name="")
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name="")
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].collect{|d| d.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].collect{|c| c.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].collect{|f| f.mood = "happy"}
  end

  def sell_pets
  end

  def list_pets
  end

  def self.all
    @@all.dup.freeze
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    @@all.clear
  end
end
