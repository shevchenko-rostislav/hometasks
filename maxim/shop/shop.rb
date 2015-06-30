class Shop
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def info
    "Shop's name: #{name}"
  end
end
