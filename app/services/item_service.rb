class ItemService
  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.show(id)
    response = Faraday.get("http://localhost:3000/api/v1/items/#{id}")
    parse(response)
  end

  def self.index
    response = Faraday.get('http://localhost:3000/api/v1/items')
    parse(response)
  end

  def self.index_by_merchant(id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{id}/items")
    parse(response)
  end
end
