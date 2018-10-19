class Owner
  # code goes here
  @@all = []
  attr_accessor :name
  attr_reader :species
  def initialize(species="")
    @species = species
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
