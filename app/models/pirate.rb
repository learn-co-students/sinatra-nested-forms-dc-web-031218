# Pirates should have a name, weight, and height.
# You will also need a class method that returns all the pirates.
class Pirate
  attr_reader :name, :weight, :height

  def self.all
    @all ||= []
  end

  def initialize (name, weight, height)
    @name = name
    @weight = weight
    @height = height
    self.class.all << self
  end
end
