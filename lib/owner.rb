require 'pry'
class Owner
  attr_accessor :name
  attr_reader :owner, :species, :pets
  @@all = []
  def self.all
    @@all
  end

  def initialize(owner)
    @owner = owner
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
    self.class.all << self
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    self.pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    self.pets[:cats] << cat
  end
end
