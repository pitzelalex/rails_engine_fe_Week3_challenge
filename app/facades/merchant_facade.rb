# frozen_string_literal: true

# Merchant Facade
class MerchantFacade
  def self.index
    data = MerchantService.index

    merchants = data[:data]

    merchants.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.show(id)
    data = MerchantService.show(id)

    merchant = data[:data]

    Merchant.new(merchant)
  end
end
