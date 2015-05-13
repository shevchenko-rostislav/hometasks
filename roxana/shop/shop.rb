class Shop
  attr_accessor :name, :items

  def initialize name
    @name = name
    @items = []
  end

  def add item
    @items << item
  end

  def batch_add *items
    @items += items
  end

  def sort_items sort_items_by, order_type #"name" or "price", into ascending order - "asc", descending - "desc"
    sort = (sort_items_by == "price") ? @items.sort_by{|item| item.price} : @items.sort_by{|item| item.name_item}
    order_type == "desc" ? sort.reverse : sort
  end
  private :sort_items

  def view sort_items_by, order_type
    sorted_items = send "sort_items", sort_items_by, order_type
    puts "#{"Item name".center(15)}|#{"Item price".center(15)}|#{"Quantity".center(10)}"
    sorted_items.each{|item| puts "#{item.name_item.center(15)}|#{item.price.to_s.center(15)}|#{item.quantity.to_s.center(10)}"}
  end

  def remove name
    remove_item = @items.find{|item| item.name_item == name}
    @items.delete(remove_item)
  end

  def remove_same_items name_item, number
    remove_items = @items.find{|item| item.name_item == name_item}
    remove_items.quantity -= number
  end

  def total_cost
    @items.inject(0){|sum, item| sum + item.price}
  end

  def items_by_cat cat
    @items.find_all{|item| item.category == cat}
  end
end
