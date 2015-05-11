class Shop
  attr_accessor :name_shop, :hash, :item, :items, :total_cost, :items_by_cat

  def initialize(name_shop)
    @name_shop = name_shop
    @items ||= []
  end

  def add(item)
    @items << item
  end

  def batch_add(*item)
    @items += item
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

  def total_cost
  	@total_cost = 0
    @items.each {|item| @total_cost += item.price}
    puts "#{@total_cost}"
  end

  def select_cat(cat)
    @items_by_cat = []
    @items.each {|item| if (item.category == cat) then @items_by_cat << item end}
    @items_by_cat
  end

end
