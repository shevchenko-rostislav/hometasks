class Store
  attr_accessor :name, :list

  def initialize(name, list)
    @name = name
    @list = list
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

  def delete_item_by_name(item_name)
    @item.delete_if { |item| item.name == item.name } 
  end

  def show_list(items) 
    show_list.each {|item| puts item}
  end

  def total_price(total) 
    total_price = item.sum do |item|
    item.quantity * item.price
  end


  batch = []

  batch << {:list => List.new(:list => "Discount products"),
          :category => Category.new(:cateory => 
           "Laptops")}

  Store.collection.insert(batch)
end
end
