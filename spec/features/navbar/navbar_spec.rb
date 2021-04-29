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

        click_on("People")
        expect(page).to have_current_path(photos_path(genre: 'people'))

        click_on("Space")
        expect(page).to have_current_path(photos_path(genre: 'space'))

        click_on("Sunsets")
        expect(page).to have_current_path(photos_path(genre: 'sunset'))
      end
    end
  end
end
