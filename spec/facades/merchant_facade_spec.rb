require 'rails_helper'

RSpec.describe MerchantFacade do
  it 'can return a collection of merchant objects' do
    merchants ||= MerchantFacade.index

    expect(merchants).to be_an Array
    expect(merchants.first).to be_a Merchant
  end
end
