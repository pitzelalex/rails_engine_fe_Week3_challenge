require 'rails_helper'

RSpec.describe 'Item Index page', type: :feature do
  let(:items) { JSON.parse(File.read('spec/fixtures/items_response.json'), symbolize_names: true) }
  describe 'as a visitor' do
    it 'displays a list of items by name' do
      visit items_path

      expect(page).to have_content('Items')

      within '#items' do
        expect(page).to have_content(items[:data].first[:attributes][:name])

        expect(page).to have_content(items[:data].last[:attributes][:name])
      end
    end

    it 'links to each items show page' do
      visit items_path

      within '#items' do
        click_link items[:data].first[:attributes][:name]
      end

      expect(current_path).to eq(item_path(items[:data].first[:id]))
    end
  end
end
