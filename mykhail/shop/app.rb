require_relative 'Shop.rb'
require_relative 'Product.rb'


shop = Shop.new("Computer items")

50.times do |i|
    product = Product.new("product#{i}", "product#{i}", rand(1000), rand(9) + 1)
    shop.add_product(product)
end

shop.info
shop.show_all_products