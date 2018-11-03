require 'pry'
class Owner
  attr_reader :owner, :species
  @@all = []
  def self.all
    @@all
  end
  def initialize(owner, species)
    @owner = owner
    @species = species
  end
end
