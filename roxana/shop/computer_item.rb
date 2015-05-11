class ComputerItem
  attr_accessor :name_item, :price, :quantity

  def initialize(name_item, price, quantity = 1)
    @name_item = name_item
    @price = price
    if  @quantity != 1 then @quantity = quantity end
  end
end
