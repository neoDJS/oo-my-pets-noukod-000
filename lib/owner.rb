class Owner
  # code goes here
  @@all = []
  attr_accessor :name
  attr_reader :species
  def initialize(species="")
    @species = species
    #@pets = {}
    @@all << self
  end

  def say_species
    "I am a #{self.species}."
  end

  def pets
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def buy_fish(name="")
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name="")
    self.pets[:cat] << Cat.new(name)
  end

  def buy_dog(name="")
    self.petss[:dog] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dog].collect{|d| d.mood = "happy"}
  end

  def play_with_cats
    self.pets[:cat].collect{|c| c.mood = "happy"}
  end

  def feed_fish
    self.pets[:fish].collect{|f| f.mood = "happy"}
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
