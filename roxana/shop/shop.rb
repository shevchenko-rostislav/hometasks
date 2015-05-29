class Shop 
	attr_accessor :name, :categories

	def initialize(name)
		@name = name
		@categories = []
	end

	def add_category(category)
		@categories.push(category)
	end

	def remove_category(name)
		@categories.delete_if { |category| category.name == name }
	end

	def show_goods_by_price(category_name)
		tmp = []
		@categories.each { |category|
			tmp = category.all_products() if category.name == category_name
		}
		puts tmp.sort { |x,y| x.price <=> y.price }
	end

	def show_goods_by_name(category_name)
		tmp = []
		@categories.each { |category|
			tmp = category.all_products() if category.name == category_name
		}
		puts tmp.sort { |x,y| x.name <=> y.name }
	end

	def show_goods_by_category(category_name)
		@categories.each { |category|
			puts category.all_products() if category.name == category_name
		}
	end

	def show_all_categories
    	puts @categories
    end

    def show_all_products
    	@categories.each { |category|
    		puts category
    		category.products.each { |product|
    			puts product
    		}
    	}
    end

    def remove_all_products
    	@categories = []
    end

    def total_products_cost
    	total = 0
    	@categories.each { |category|
    		category.products.each { |product|
    			total += product.price
    		}
    	}
    	total
    end

    def total_products_count
    	total = 0
    	@categories.each { |category|
    		category.products.each { |product|
    			total += product.quantity
    		}
    	}
    	total
    end

    def info
    	puts "Shop name: #{name}"
    	puts "Shop total category count: #{categories.size}"
    	puts "Shop total products cost: #{total_products_cost} $"
    	puts "Shop total products count: #{total_products_count}"
    	puts "\n"
    end
end



class Category
	attr_accessor :name, :products

	def initialize(name)
		@name = name
		@products = []
	end

	def add_product(product)
		@products.push(product)
    end

    def remove_product(name)
    	@products.delete_if { |product| product.name == name}
    end

    def all_products
        @products
    end

    def size
    	@products.size
    end

    def to_s
		"#{@name}"
	end
end


class Product
	attr_accessor :name, :quantity, :price

	def initialize(name, quantity = 1, price)
	    @name = name
	    @quantity = quantity
		@price = price
	end

	def to_s
		"#{@name}, quantity: #{quantity}, price: #{@price}$"
	end
end


#  Test
module Test
	shop = Shop.new("Computer items")

	for i in (1..3)
		category = Category.new("Category#{i}")
		for i in (1..5)
			product = Product.new("product#{i}", rand(9) + 1, rand(1000))
		    category.add_product(product)
	    end
	    shop.add_category(category)
	end

	shop.info()

    shop.show_all_products()
    #shop.remove_category("Category1")
    #shop.show_goods_by_price("Category1")
    #shop.show_goods_by_name("Category1")
	#shop.show_goods_by_category("Category1")

	shop.remove_all_products()

	shop.show_all_products()  
	
end
