class Owner
  attr_reader :owner
  @@all = []
  def self.all
    @@all
  end
  def initialize(owner)
    @owner = owner
    self.class.all << owner
  end
end
