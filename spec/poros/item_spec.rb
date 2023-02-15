require 'rails_helper'

RSpec.describe Item, type: :poro do
  describe '#initialize' do
    it 'exists and has attributes' do
      data = {
        "id": '2425',
        "type": 'item',
        "attributes": {
          "name": 'Item Excepturi Rem',
          "description": 'Perferendis reprehenderit fugiat sit eos. Corporis ipsum ut. Natus molestiae quia rerum fugit quis. A cumque doloremque magni.',
          "unit_price": 476.82,
          "merchant_id": 99
        }
      }
      item = Item.new(data)

      expect(item).to be_an Item
      expect(item.id).to eq(2425)
      expect(item.name).to eq('Item Excepturi Rem')
    end
  end
end
