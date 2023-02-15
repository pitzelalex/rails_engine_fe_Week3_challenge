# frozen_string_literal: true

# Merchant Service
class MerchantService
  # def self.conn
  #   Faraday.new(url: 'http://localhost:3000')
  # end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.index
    response = Faraday.get('http://localhost:3000/api/v1/merchants')
    parse(response)
  end

  def self.show(id)
    response = Faraday.get("http://localhost:3000/api/v1/merchants/#{id}")
    parse(response)
  end
end
