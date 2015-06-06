class Item

	def initialize (name, price, category)
		checkName (name)
		@item_name = name
		@item_price = price
		@item_category = category
		
	end

	attr_accessor :item_name,  :item_price
	attr_reader :item_category


	def to_s
		@item_name
	end

	def checkName name
		if (name.length < 5)
			raise "Item's name is too short."
		end
	end

	private :checkName
end