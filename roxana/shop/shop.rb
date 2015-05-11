class Shop
  attr_accessor :name_shop, :hash, :item, :items

  def initialize(name_shop)
    @name_shop = name_shop
  end

  def add(item)
    @items ||= []
    @items << item
    @hash = {name_shop => @items}
  end

  def view
    puts "#{"Item name".center(15)}|#{"Item price".center(15)}|#{"Quantity".center(10)}"
    @items.each{|item| puts "#{item.name_item.center(15)}|#{item.price.to_s.center(15)}|#{item.quantity.to_s.center(10)}"}
  end

  def remove(name)
    @items.each {|item| if item.name_item == name then @items.delete(item) end}
  end
end