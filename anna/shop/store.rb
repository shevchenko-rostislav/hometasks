class Store
  attr_accessor :name, :list

  def initialize(name, list)
    @name = name
    @list = list
  end
end

  def add(item)
    @items << item
  end

  def show_item_by_name(item_name)
    item_to_show = [comp1, comp2, comp3]
    @item.each do |item|
    if item.name == item_name
      item_to_show << item
    end
    end
  end

  def show_item_by_price(price)
    item_to_show = [comp1, comp2, comp3]
    @item.each do |item|
    if item.price == price
      item_to_show << item
    end
    end
  end
