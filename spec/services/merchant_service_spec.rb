require 'rails_helper'

RSpec.describe MerchantService do
  it "can return multiple merchant's data" do
    response ||= MerchantService.index

    expect(response[:data]).to be_an Array
    expect(response[:data].count).to eq(100)

    expect(response[:data].first[:id]).to eq('1')
    expect(response[:data].first[:type]).to eq('merchant')
    expect(response[:data].first[:attributes][:name]).to eq('Schroeder-Jerde')
    expect(response[:data].last[:id]).to eq('42')
    expect(response[:data].last[:type]).to eq('merchant')
    expect(response[:data].last[:attributes][:name]).to eq('Glover Inc')
  end

  it "can return one merchant's data" do
    response ||= MerchantService.show(1)

    expect(response[:data][:id]).to eq('1')
    expect(response[:data][:type]).to eq('merchant')
    expect(response[:data][:attributes][:name]).to eq('Schroeder-Jerde')
  end
end
