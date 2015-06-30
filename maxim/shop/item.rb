class Item
  attr_accessor :name, :price, :number

  def initialize(name, price, number)
    @name   = name
    @price  = price
    @number = number
  end

  def to_s
    "Item name: #{name}, price: $#{price}, number: #{number}."
  end
end
