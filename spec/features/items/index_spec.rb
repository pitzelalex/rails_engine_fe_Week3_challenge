require 'rails_helper'

RSpec.describe 'Item Index page', type: :feature do
  let(:items) { JSON.parse(File.read('spec/fixtures/items_response.json'), symbolize_names: true) }
  describe 'as a visitor' do
    it 'displays a list of items by name' do
      visit items_path

      expect(page).to have_content('Items')

      within '#items' do
        expect(page).to have_content(merchants[:data].first[:attributes][:name])

        expect(page).to have_content(merchants[:data].last[:attributes][:name])
      end
    end
  end
end
