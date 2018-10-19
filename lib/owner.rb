class Owner
  # code goes here
  @@all = []


  def self.all
    @all.dup.freeze
  end

  def self.reset_all
    @@all.clear
  end
end
