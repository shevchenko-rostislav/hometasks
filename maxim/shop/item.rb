class Item
  attr_accessor :name, :price, :number, :category

  def initialize(name, price, number, category)
    @name     = name
    @price    = price
    @number   = number
    @category = category
  end

  def to_s
    "Item name: #{@name}, category: #{@category}, price: $#{@price}, number: #{@number}."
  end
end
