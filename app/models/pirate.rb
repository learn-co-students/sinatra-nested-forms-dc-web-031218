class Pirate
  attr_reader :name, :weight, :height

  def initialize(attributes)
    @name = attributes[:name]
    @weight = attributes[:weight]
    @height = attributes[:height]
    self.class.all << self
  end

  def self.all
    @@pirates ||= []
  end
end
