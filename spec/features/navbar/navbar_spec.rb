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

        click_on("Genres")
        click_on("Action")
      end
      # expect(page).to have_content('Dani Coleman - Through the Lens of Light')
      # expect(page).to have_content("Here is how I see the world and its infinite vastness!")
    end
  end
end
