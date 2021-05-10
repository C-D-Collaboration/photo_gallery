require 'rails_helper'

RSpec.describe 'Contact Page' do
  describe 'visit /contact' do
    it "can see a contact page with contact information and a form" do
      visit "/contact"
      expect(page).to have_content('Contact')
      expect(page).to have_content("Have a question?")
      expect(page).to have_content("Please don't hesitate to reach out for any reason!")
      expect(page).to have_content("email: danicoleman00@gmail.com")
    end
  end
end