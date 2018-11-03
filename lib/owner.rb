require 'pry'
class Owner
  attr_reader :owner, :species
  @@all = []
  def self.all
    @@all
  end

  def initialize(owner)
    @owner = owner
    @species = "human"
    self.class.all << self
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end
end
