require 'rails_helper'

RSpec.describe 'Merchant Show page', type: :feature do
  let(:merchant_99_items) { JSON.parse(File.read('spec/fixtures/merchant_items_response.json'), symbolize_names: true) }
  describe 'as a visitor' do
    it 'displays a list of items this merchant sells' do
      visit merchant_path(99)

      expect(page).to have_content('Fahey-Stiedemann')

      within '#items' do
        expect(page).to have_content(merchant_99_items[:data].first[:attributes][:name])
      end
    end
  end
end
