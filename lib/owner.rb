require 'pry'
class Owner
  attr_reader :owner
  @@all = []
  def self.all
    @@all
  end
  def initialize(owner)
    @owner = owner
  end
end
