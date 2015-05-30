class ComputerItem
  attr_accessor :name_item, :price, :quantity, :category

  def initialize name_item, price, quantity = 1, category = "other"
    name_item.size > 5 ? (raise "Name_item must be <=5 letters size") : @name_item = name_item
    @price = price
    @quantity = quantity
    @category = category
  end
end
