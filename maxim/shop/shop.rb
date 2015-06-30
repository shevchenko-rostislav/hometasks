class Shop
  attr_accessor :name, :items

  def initialize(name)
    @name  = name
    @items = []
  end

  def info
    "Shop's name: #{name}"
  end

  def add_item(item)
    @items << item
  end
end
