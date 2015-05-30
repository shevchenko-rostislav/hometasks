class Store

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
		@store_items.select { |key, value| k.category == category }.keys
	end

	def removeItem (item, amount = 1)
		checkAmount(amount)
		if (item.is_a?(String))
			removeByName(item, amount)
		else
			removeByObject(item, amount)
		end
	end

	def getTotalPriceOf item
		totalPrice = 0
		@store_items.each{ |key, value| totalPrice += key.item_price * @store_items[item] }  #price, multiplied by amount
		totalPrice
	end

	def getGoodsOrderedBy order_by
		if order_by.downcase == "price"
			@store_items.sort_by! { |key, value| key.item_price }
		elsif order_by.downcase == "name"
			@store_items.sort_by! { |key, value| key.item_name }
		end
	end

	def checkAmount amount
		if amount < 1
			raise "Amount of items added can not be less or equal to zero"
		end
	end

	def removeByName (name, amount)
		foundItem = @store_items.select { |key, value| k.item_name == name }.key
		removeByObject(foundItem, amount)
	end

	def removeByObject (item, amount)
		if (amount > @store_items[item])
			@store_items.delete(item)
		else
			@store_items[item] -= amount
	end

	private :checkAmount, :removeByName, :removeByObject


end