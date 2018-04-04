class Ship
  attr_reader :name, :type, :booty

  def initialize(attributes)
    @name = attributes[:name]
    @type = attributes[:type]
    @booty = attributes[:booty]
    self.class.all << self
  end

  def self.all
    @@ships ||= []
  end

  def self.clear
    self.all.clear
  end
end
