class ComputerItem
  attr_accessor :name_item, :price, :quantity, :category

  def initialize(name_item, price, quantity = 1, category = "other")
    @name_item = name_item.size <= 5 ? name_item : name_item[0,5]
    @price = price
    @quantity = quantity
    @category = category
  end
end