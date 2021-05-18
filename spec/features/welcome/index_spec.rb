require 'rails_helper'

RSpec.describe 'Welcome Page' do
  describe 'visit /' do
    it "can see a title and description" do
      visit root_path
      expect(page).to have_content('Dani Coleman')
      expect(page).to have_content("Photography")
    end
  end
end
