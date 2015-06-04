class Store

	attr_accessor :store_name

	def initialize name
		@store_name = name

		#main container for store items. Format => item_name : item_amount
		@store_items = Hash.new
	end

	def addItem (item, amount = 1)
		checkAmount(amount)
		@store_items[item] =+ amount
	end

	def getItems
		@store_items.keys
	end

	def getItemsByCategory category
		@store_items.select { |key, value| key.item_category == category }.keys
	end

	def removeItem (item, amount = 1)
		checkAmount(amount)
		if (item.is_a?(String))
			removeByName(item, amount)
		else
			removeByObject(item, amount)
		end
	end

	def getTotalPrice
		totalPrice = 0
		@store_items.each { |key, value| totalPrice += (key.item_price * value) }  #price, multiplied by amount
		totalPrice
	end

	def getGoodsOrderedBy order_by
		if order_by.downcase == "price"
			return @store_items.sort_by { |key, value| key.item_price }.to_h
		elsif order_by.downcase == "name"
			return @store_items.sort_by { |key, value| key.item_name.to_sym}.to_h
		end
	end

	def checkAmount amount
		if amount < 1
			raise "Amount of items added can not be less or equal to zero"
		end
	end

	def removeByName (name, amount)
		foundItem = @store_items.select { |key, value| key.item_name == name }
		removeByObject(foundItem.keys[0], amount)
	end

	def removeByObject (item, amount)
		if (amount >= @store_items[item])
			@store_items.delete(item)
		else
			@store_items[item] -= amount
		end
	end

	private :checkAmount, :removeByName, :removeByObject


end