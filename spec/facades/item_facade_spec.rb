require 'rails_helper'

RSpec.describe ItemFacade do
  it 'can return a collection of item objects by merchant' do
    items ||= ItemFacade.index_by_merchant(2)

    expect(items).to be_an Array
    expect(items.first).to be_an Item
    expect(items.last).to be_an Item
  end

  it 'can return a collection of item objects' do
    items ||= ItemFacade.index

    expect(items).to be_an Array
    expect(items.first).to be_an Item
    expect(items.last).to be_an Item
  end
end
