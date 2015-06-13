class User

  attr_accessor :stores

  def initialize name
    @stores = []
  end

  def create_store name
    new_store = Store.new(name);
    @stores.push(new_store)
  end

  def get_store_by_name store_name
    selected_stores.find { |store| store.store_name == store_name}
  end
end
