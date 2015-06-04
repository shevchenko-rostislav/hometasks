class Shop 
  attr_accessor :name, :products

  def initialize(name)
    @name = name
    @products = []
  end

  def add_product(product)
    @products.push(product)
  end

  def remove_product(name)
    @products.delete_if { |product| product.name == name }
  end

  def show_goods_by_price
    puts products.sort { |x,y| x.price <=> y.price }
  end

  def show_goods_by_name(name)
    puts products.sort { |x,y| x.name <=> y.name }
  end

  def show_goods_by_category(category_name)
    @products.each do |product|
      puts product if product.category = category_name
    end
  end

  def show_all_products
    puts products
  end

  def remove_all_products
    self.products = []
  end

  def total_products_cost
    total = 0
    products.each do |product|
    	total += product.price * product.quantity
    end
    total
  end

  def total_products_count
    total = 0
    products.each do |product|
    	total += product.quantity
    end
    total
  end

  def info
    puts "Shop name: #{name}"
    puts "Shop total products cost: #{total_products_cost} $"
    puts "Shop total products count: #{total_products_count}"
    puts "\n"
  end
end