class Item
  attr_accessor :item_name, :price, :quantity, :category

  def initialize item_name, price
    @item_name = item_name
    puts "Item should have 5 letters!" if item_name.size < 5
    @price = price
    @quantity = quantity
    @category = category
  end

  def add_category_name(category_name)
    @category_name << category_name
  end

  def select_category(category)
    category_to_show = [cat1, cat2, cat3]
    @category.each do |category|
    if category.name == category_name
    category_to_show << category
    end
  end
end
end
