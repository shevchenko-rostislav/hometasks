class Product
  attr_accessor :name, :category, :price, :quantity

  def initialize(name, category, price, quantity = 1)
    @name = name
    @category = category
    @price = price
    @quantity = quantity
  end

  def to_s
    "Name: #{name}, category: #{category}, price: #{price}$ , quantity: #{quantity}"
  end
end