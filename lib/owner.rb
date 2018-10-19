class Owner
  # code goes here
  @@all = []


  def self.all
    @all.dup.freeze
  end
end