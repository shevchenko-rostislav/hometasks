class Item
  attr_accessor :name, :price, :number, :category

  def initialize(name, price, number, category)
    name.size < 5 ? (fail 'Name must be at least 5 symbols long') : @name = name
    @price    = price
    @number   = number
    @category = category
  end

  def to_s
    "Item name: #{@name}, category: #{@category}, price: $#{@price}, number: #{@number}."
  end
end
