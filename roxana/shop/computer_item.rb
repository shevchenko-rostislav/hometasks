class ComputerItem
  attr_accessor :name_item, :price, :quantity, :category

  def initialize(name_item, price, quantity = 1, category = "other")
    name_item.size <= 5 ? @name_item = name_item : @name_item = name_item[0,5]
    @price = price
    if  @quantity != 1 then @quantity = quantity end
    if  @category != "other" then @category = category end
  end
end