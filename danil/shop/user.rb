class User

	attr_accessor :name, :stores

	def initialize name
		@name = name
		@stores = []
	end

	def createStore name
		newStore = Store.new(name);
		@stores.push(newStore)
	end

	def getStoreByName storeName
		selectedStores = @stores.select { |store| store.store_name == storeName }
		return selectedStores.first
	end

end
