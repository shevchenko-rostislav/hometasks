class Shop
  attr_accessor :name, :items

  def initialize(name, items = [])
    @name  = name
    @items = items
  end

  def self.random_shop
    shop = Shop.new('Random shop')

    5.times do |i|
      i = Item.new("item-#{i + 1}", rand(1000), rand(5) + 1, "cat-#{rand(3)}")
      shop.add_item(i)
    end

    shop
  end

  def info
    "Shop's name: #{@name}"
  end

  def add_item(item)
    @items << item
  end

  def remove_item(name, number = nil)
    if number.nil?
      @items.delete_if { |item| item.name == name }
    else
      @items.each do |item|
        item.number -= number if item.name == name
      end
    end
  end

  def list_items
    puts @name
    @items.each do |item|
      puts item.to_s
    end
  end

  def total_cost
    total = 0
    @items.each do |item|
      total += item.price * item.number
    end
    puts "Total cost of all items: $#{total}"
  end

  def list_items_by(attr)
    if attr == 'name'
      puts @items.sort { |x, y| x.name <=> y.name }
    elsif attr == 'price'
      puts @items.sort { |x, y| x.price <=> y.price }
    else
      fail 'You can sort either by name or price only.'
    end
  end

  def list_items_by_category(category_name)
    @items.each do |item|
      puts item.to_s if item.category == category_name
    end
  end
end
