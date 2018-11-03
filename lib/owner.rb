require 'pry'
class Owner
  attr_accessor pets
  attr_reader :owner
  @@all = []
  def self.all
    @@all
  end
  def initialize(owner)
    @owner = owner
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << @owner
  end
end
