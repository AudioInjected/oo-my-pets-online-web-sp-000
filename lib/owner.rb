require 'pry'
class Owner
  attr_reader :owner, :species
  @@all = []
  def self.all
    @@all
  end

  def initialize(owner)
    @owner = owner
    self.class.all << self
  end

  def self.reset_all
    self.all.reset
  end
end
