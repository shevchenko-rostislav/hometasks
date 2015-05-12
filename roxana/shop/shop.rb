require 'active_support'

class Shop
  attr_accessor :name_shop, :hash, :item, :items, :total_cost

  def initialize(name_shop)
    @name_shop = name_shop
    @items = []
  end

  def add(item)
    @items << item
  end

  def batch_add(*items)
    @items += items
  end

  def sort(order, order_type) #"name" or "price", into ascending order - asc, descending - "desc"
    order = (order == "price") ? @items.sort_by{|item| item.price} : @items.sort_by{|item| item.name_item}
    order_type == "desc" ? order.reverse : order
  end

  def view(order, order_type)
    sort_items = sort(order, order_type)
    puts "#{"Item name".center(15)}|#{"Item price".center(15)}|#{"Quantity".center(10)}"
    sort_items.each{|item| puts "#{item.name_item.center(15)}|#{item.price.to_s.center(15)}|#{item.quantity.to_s.center(10)}"}
  end

  def remove(name)
    @items.delete(@items.find {|item| item.name_item == name})
  end

  def remove_qua(name_item, number)
    @items.find{|item| item.name_item == name_item}.quantity -= number
  end

  def total_cost
    @items.inject(0){|sum, item| sum + item.price}
  end

  def select_cat(cat)
    @items.find_all{|item| item.category == cat}
  end
end
