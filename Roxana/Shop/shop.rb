class Shop
  def initialize (name)
    @name = name
  end
  attr_accessor :items
  def create(goods) #create items
    @items = goods
    @items
  end
  def add(name_item, price_item)
    @items[name_item] = price_item
  end
  def view
    puts @items
  end
  def remove(name_item)
    @items.delete(name_item)
  end
  def total_cost
    @items.values.inject {|total, item| total += item}
  end
end