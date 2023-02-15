require 'rails_helper'

RSpec.describe 'Item Index page', type: :feature do
  describe 'as a visitor' do
    it "displays the item's details" do
      visit item_path(31)

      expect(page).to have_content('Item Voluptate Ducimus')
      expect(page).to have_content('Description: Commodi et quis est maxime. Enim aut qui mollitia. Nostrum voluptas debitis dolorem sit cum aut. Saepe sit ratione voluptatum nemo incidunt odit cumque.')
      expect(page).to have_content('Unit Price: $11.71')
    end
  end
end
