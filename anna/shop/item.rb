class Item
  attr_accessor :item_name, :price, :category

  def initialize item_name, price
    @item_name = item_name
    puts "Item should have 5 letters!" if item_name.size < 5
    @price = price
    @category = category
  end
end
