require './user.rb'
require './item.rb'
require './store.rb'

class Application

	def initialize
		@itemsBuffer = []
		@user = nil
		@randomStore_index = 1
	end

	attr_accessor :itemsBuffer, :user

	def register name
		@user = User.new(gets.chomp)
	end


	def createStore name
		@user.createStore(name)
	end

	def createItem (name, price, category)
		@itemsBuffer << Item.new(name, price, category)
	end


	def addItemToStore (item, storeName, amount)
		@user.getStoreByName(storeName).addItem(item, amount)
	end

	def addItemsToStore(storeName, *items)
		items.each { |item| @user.getStoreByName(storeName).addItem(item) }
	end
				
	def showStores
		@user.stores.each { |store| puts "#{store.store_name}" }
	end

	def showItemsFrom storeName
		@user.getStoreByName(storeName).getItems.each { |item| puts "#{item.item_name}"  }
	end
	
	def removeItem (item, storeName, amount)
		@user.getStoreByName(storeName).removeItem(item, amount)
	end

	def removeItemByName (name, storeName, amount)
		@user.getStoreByName(storeName).removeItem(name, amount)
	end

	def getTotalCost storeName
		@user.getStoreByName(storeName).getTotalPrice
	end

	def getItemsByCategory (categoryName, storeName)
		@user.getStoreByName(storeName).getItemsByCategory(categoryName)
	end

	def orderGoodsByPrice (storeName)
		@user.getStoreByName(storeName).getGoodsOrderedBy("price")
	end

	def orderGoodsByName (storeName)
		@user.getStoreByName(storeName).getGoodsOrderedBy("name")
	end

	def generateRandomStore
		@user ||= User.new("tempUser")
		@user.createStore("randomStore ##{@randomStore_index}")
		random = Random.new()

		20.times do 
			newItem = Item.new("itemName #{random.rand(100)}", random.rand*100, "category")
			@user.getStoreByName("randomStore ##{@randomStore_index}").addItem(newItem)

		end
		@randomStore_index += 1
	end
end

Application.new


