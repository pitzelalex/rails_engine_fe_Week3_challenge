require 'rails_helper'

RSpec.describe 'Merchant Index page', type: :feature do
  let(:merchants) { JSON.parse(File.read('spec/fixtures/merchants_response.json'), symbolize_names: true) }
  describe 'as a visitor' do
    it 'displays a list of merchants by name' do
      visit merchants_path

      expect(page).to have_content('Merchants')
      within '#merchants' do
        expect(page).to have_content(merchants[:data].first[:attributes][:name])
        expect(page).to have_content(merchants[:data][25][:attributes][:name])
        expect(page).to have_content(merchants[:data][50][:attributes][:name])
        expect(page).to have_content(merchants[:data][75][:attributes][:name])
        expect(page).to have_content(merchants[:data].last[:attributes][:name])
      end
    end

    it 'links to each merchants show page' do
      visit merchants_path

      within '#merchants' do
        click_link merchants[:data].first[:attributes][:name]
      end

      expect(current_path).to eq(merchant_path(merchants[:data].first[:id]))
    end
  end
end
