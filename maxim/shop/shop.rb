class Shop
  attr_accessor :name, :items

  def initialize(name, items = [])
    @name  = name
    @items = items
  end

  def self.random_shop
    shop = Shop.new("Random shop")

    5.times do |i|
        i = Item.new("item-#{i+1}", rand(1000))
        shop.add_item(i)
    end

    return shop
  end

  def info
    "Shop's name: #{name}"
  end

  def add_item(item)
    @items << item
  end

  def list_items
    puts @name
    @items.each do |item|
      puts item.to_s
    end
  end
end
