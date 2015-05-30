class User

	attr_accessor :nickname, :stores

	def initialize nickname
		@nickname = nickname
		@stores = []
	end

	def createStore name
		@stores << Store.new(name)
	end

	def getStoreByName name
		@stores[name]
	end

end
