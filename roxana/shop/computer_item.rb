class ComputerItem
  attr_accessor :name_item, :price, :quantity
  def initialize(name_item, price, quantity = 1)
    @name_item = name_item
    @price = price
    if  @quantity != 1 then @quantity = quantity end
    puts "Now you create new item \"#{@name_item}\". To get manual about methods you"
    puts "  need to call method \"manual\" without Object name."
  end
end

def manual
  puts "To move items to shop you must to call method \"add\" of object(of Shop"
  puts "  class) with argument - name of object item. Example: shop1.add(item1)\n"
  puts "To view items of any shop you need to call method \"view\" of object(of"
  puts "  Shop class). Example: shop1.view\n"
  puts "To remove items from any shop you need to call method \"remove\" of    "
  puts "  object (of Shop class) with argument - name_item. "
  puts "  Example: shop1.remove(\"HDD\")"
end
