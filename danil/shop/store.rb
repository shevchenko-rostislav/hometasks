class Store

  attr_accessor :name

  def initialize name
    @name = name
		#main container for store items. Format => item_name : item_amount
    @store_items = Hash.new
  end

  def add_item (item, amount = 1)
    check_amount(amount)
    @store_items[item] =+ amount
  end

  def get_items
    @store_items.keys
  end

  def get_items_by_category category
    @store_items.select { |key, value| key.item_category == category }.keys
  end

  def remove_item (item, amount = 1)
    check_amount(amount)
    if (item.is_a?(String))
      remove_by_name(item, amount)
    else
      remove_by_object(item, amount)
    end
  end

  def get_total_price
    total_price = 0
    @store_items.each { |key, value| total_price += (key.item_price * value) }  #price, multiplied by amount
    total_price
  end

  def get_goods_ordered_by order_by
    ordered_goods = nil
    if order_by.downcase == "price"
      ordered_goods = @store_items.sort_by { |key, value| key.item_price }
    elsif order_by.downcase == "name"
      ordered_goods = @store_items.sort_by { |key, value| key.item_name.to_sym }
    end
    ordered_goods.to_h
  end

  private 
    def check_amount amount
      if amount < 1
        raise "Amount of items added can not be less or equal to zero"
      end
    end

    def remove_by_name (name, amount)
      found_item = @store_items.select { |key, value| key.item_name == name }
      remove_by_object(found_item.keys[0], amount)
    end

    def remove_by_object (item, amount)
      if (amount >= @store_items[item])
        @store_items.delete(item)
      else
        @store_items[item] -= amount
      end
    end

end
