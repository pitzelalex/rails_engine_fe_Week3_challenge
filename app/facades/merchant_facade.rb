# frozen_string_literal: true

# Merchant Facade
class MerchantFacade
  def self.all
    data = MerchantService.all

    merchants = data[:data]

    merchants.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end
