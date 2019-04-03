class Ship

  attr_accessor :name, :booty
  attr_reader :type
  @@ships = []

  def initialize(name, type, booty)
    @name = name
    @type = type
    @booty = booty
    @@ships << self
  end

  def self.all
    @@ships
  end

  def self.clear
    @@ships = []
  end

end
