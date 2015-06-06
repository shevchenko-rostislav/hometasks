class Store
  attr_accessor :name, :list

  def initialize name, list
    @name = name
    @list = list
  end
end

class Category 

  attr_accessor :name, :item

  def initialize name, item
    @name = name
    @item = item
  end
end
 
  def add_category_name name
    @name << name
  end

class Item  
  attr_accessor :item_name, :price

  def initialize item_name, price
    @item_name = item_name
    @price = price
  end
end

  def add_item item
    @item << item
  end

  def show_item_by_name item_name
    item_to_show = [comp1, comp2, comp3]
    @item.each do |item|
    if item.name == item_name 
      item_to_show << item
  end
end
end

  def show_item_by_price price
    item_to_show = [comp1, comp2, comp3]
    @item.each do |item|
    if item.price == price
      item_to_show << item
  end
  end
end 
itemWidth = 10
str = ' '
puts str.ljust itemWidth