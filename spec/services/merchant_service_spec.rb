require 'rails_helper'

RSpec.describe MerchantService do
  it 'can return merchant data' do
    response ||= MerchantService.all

    expect(response[:data]).to be_an Array
    expect(response[:data].count).to eq(100)

    expect(response[:data].first[:id]).to eq('1')
    expect(response[:data].first[:attributes][:name]).to eq('Schroeder-Jerde')
    expect(response[:data].last[:id]).to eq('42')
    expect(response[:data].last[:attributes][:name]).to eq('Glover Inc')
  end
end
