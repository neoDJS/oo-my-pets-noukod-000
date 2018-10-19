class Owner
  # code goes here
  @@all = []
  attr_accessor :name
  attr_reader :species
  def initialize(species="")
    @species = species
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name="")
  end

  def buy_cat(name="")
  end

  def buy_dog(name="")
  end

  def walk_dogs
  end

  def play_with_cats
  end

  def feed_fish
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
