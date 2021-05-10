require 'rails_helper'

RSpec.describe 'Navbar' do
  describe 'visit root path' do
    before :each do
      visit root_path

      @landscape1 = Photo.create!(title: "Beautiful Mountains", description: "Look at dem mountains", genre: "landscape", url: 'https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683__340.png')
      @space1 = Photo.create!(title: "Galaxy", description: "Look at dat spiral galaxy", genre: "space", url: 'https://cdn.wccftech.com/wp-content/uploads/2016/09/spacee-2060x1288.jpg')
      @people1 = Photo.create!(title: "Beautiful young girl", description: "Look at dem eyes", genre: "people", url: 'https://mymodernmet.com/wp/wp-content/uploads/2018/10/Mou-Aysha-portrait-photography-3.jpg')
      @sunset1 = Photo.create!(title: "Ocean Sunset", description: "Look at dat surf", genre: "sunset", url: 'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2015/01/6198521760_aa86027669_z.jpg')
    end
    
    it "can see the navbar and its links" do
      within '.navbar' do
        click_on("Home")
        expect(current_path).to eq(root_path)

        click_on("About")
        expect(current_path).to eq(about_path)

        click_on("Photos")

        click_on("Landscapes")
        expect(page).to have_current_path(photos_path(genre: 'landscape'))

        click_on("People")
        expect(page).to have_current_path(photos_path(genre: 'people'))

        click_on("Space")
        expect(page).to have_current_path(photos_path(genre: 'space'))

        click_on("Sunsets")
        expect(page).to have_current_path(photos_path(genre: 'sunset'))

        click_on("Contact")
        expect(current_path).to eq(contact_path)
      end
    end
  end
end
