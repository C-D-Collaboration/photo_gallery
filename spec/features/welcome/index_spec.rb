require 'rails_helper'

RSpec.describe 'Welcome Page' do
  describe 'visit /' do
    it "can see a title and description" do
      visit "/"
      expect(page).to have_content('Dani Coleman - Through the Lens of Light')
      expect(page).to have_content("Here is how I see the world and its infinite vastness!")
    end
  end
end
