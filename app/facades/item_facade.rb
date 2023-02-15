class ItemFacade
  def self.index
    data = ItemService.index

    items = data[:data]

    items.map do |item_data|
      Item.new(item_data)
    end
  end

  def self.index_by_merchant(id)
    data = ItemService.index_by_merchant(id)

    items = data[:data]

    items.map do |item_data|
      Item.new(item_data)
    end
  end
end
