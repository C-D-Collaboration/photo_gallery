require 'rails_helper'

RSpec.describe 'Navbar' do
  describe 'visit /' do
    it "can see the navbar and its links" do
      visit "/"

      within '.navbar' do
        click_on("Home")
        expect(current_path).to eq("/")
        
        click_on("About")
        expect(current_path).to eq("/about")

        click_on("Photos")

        click_on("Landscapes")
        expect(page).to have_current_path(photos_path(genre: 'landscape'))

        
      end
    end
  end
end
