require 'rails_helper'

RSpec.describe ItemService do
  it "can return multiple item's data based on merchant" do
    response ||= ItemService.index_by_merchant(99)

    expect(response[:data]).to be_an Array

    expect(response[:data].first[:id]).to eq('2425')
    expect(response[:data].first[:type]).to eq('item')
    expect(response[:data].first[:attributes][:name]).to eq('Item Excepturi Rem')
    expect(response[:data].first[:attributes][:description]).to eq('Perferendis reprehenderit fugiat sit eos. Corporis ipsum ut. Natus molestiae quia rerum fugit quis. A cumque doloremque magni.')
    expect(response[:data].first[:attributes][:unit_price]).to eq(476.82)
    expect(response[:data].first[:attributes][:merchant_id]).to eq(99)

    expect(response[:data].last[:id]).to eq('2438')
    expect(response[:data].last[:type]).to eq('item')
    expect(response[:data].last[:attributes][:name]).to eq('Item Omnis Adipisci')
    expect(response[:data].last[:attributes][:description]).to eq('Corporis dicta eaque qui dolor mollitia enim. Est est quas aut deleniti quam. Tempore alias velit laudantium eum ut rerum est. Eos quis sequi expedita. Laboriosam minima autem pariatur perferendis consequatur.')
    expect(response[:data].last[:attributes][:unit_price]).to eq(672.53)
    expect(response[:data].last[:attributes][:merchant_id]).to eq(99)
  end

  it "can return multiple item's data" do
    response ||= ItemService.index

    expect(response[:data]).to be_an Array

    expect(response[:data].first[:id]).to eq('4')
    expect(response[:data].first[:type]).to eq('item')
    expect(response[:data].first[:attributes][:name]).to eq('Item Nemo Facere')
    expect(response[:data].first[:attributes][:description]).to eq('Sunt eum id eius magni consequuntur delectus veritatis. Quisquam laborum illo ut ab. Ducimus in est id voluptas autem.')
    expect(response[:data].first[:attributes][:unit_price]).to eq(42.91)
    expect(response[:data].first[:attributes][:merchant_id]).to eq(1)

    expect(response[:data].last[:id]).to eq('179')
    expect(response[:data].last[:type]).to eq('item')
    expect(response[:data].last[:attributes][:name]).to eq('Item Qui Veritatis')
    expect(response[:data].last[:attributes][:description]).to eq('Totam labore quia harum dicta eum consequatur qui. Corporis inventore consequatur. Illum facilis tempora nihil placeat rerum sint est. Placeat ut aut. Eligendi perspiciatis unde eum sapiente velit.')
    expect(response[:data].last[:attributes][:unit_price]).to eq(906.17)
    expect(response[:data].last[:attributes][:merchant_id]).to eq(9)
  end
end
