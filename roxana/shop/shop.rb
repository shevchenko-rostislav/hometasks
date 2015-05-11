class Shop
  attr_accessor :name_shop, :hash, :item, :items
  def initialize(name_shop)
    @name_shop = name_shop
    puts "You create a new shop \"#{@name_shop}\". For creating item you need to create object\n"
    puts "  of ComputerItem class with attributes, price, quantity(by default = 1)"
  end

  def add(item)
    if @items.nil? then @items = [] end
    @items << item
    @hash = {name_shop => @items}
  end

  def view
    puts "#{"Item name".center(15)}|#{"Item price".center(15)}|#{"Quantity".center(10)}"
    @items.each{|item| puts "#{item.name_item.center(15)}|#{item.price.to_s.center(15)}|#{item.quantity.to_s.center(10)}"}
  end

  public def remove(name)
    @items.each {|item| if item.name_item == name then @items.delete(item) end}
  end
end