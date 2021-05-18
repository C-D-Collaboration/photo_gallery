require 'rails_helper'

RSpec.describe 'Photo Index Page' do
  describe 'visit photos_path' do
    before :each do
      visit root_path

      @landscape1 = Photo.create!(title: "Beautiful Mountains", description: "Look at dem mountains", genre: "landscape", url: 'https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683__340.png')
      @space1 = Photo.create!(title: "Galaxy", description: "Look at dat spiral galaxy", genre: "space", url: 'https://cdn.wccftech.com/wp-content/uploads/2016/09/spacee-2060x1288.jpg')
      @people1 = Photo.create!(title: "Beautiful young girl", description: "Look at dem eyes", genre: "people", url: 'https://mymodernmet.com/wp/wp-content/uploads/2018/10/Mou-Aysha-portrait-photography-3.jpg')
      @sunset1 = Photo.create!(title: "Ocean Sunset", description: "Look at dat surf", genre: "sunset", url: 'https://llandscapes-10674.kxcdn.com/wp-content/uploads/2015/01/6198521760_aa86027669_z.jpg')
    end

    it "can visit landscapes index page" do
      click_on("Landscapes")

      expect(page).to have_current_path(photos_path(genre: 'landscape'))

      expect(page).to have_content("Landscapes")

      within('.index-images') do
        expect(page).to have_xpath("//img[contains(@src,'#{@landscape1.url}')]")
      end
    end

    it "can visit landscapes index page and not find other genres" do
      click_on("Landscapes")

      expect(page).to have_current_path(photos_path(genre: 'landscape'))

      expect(page).to have_content("Landscapes")

      within('.index-images') do
        expect(page).to_not have_xpath("//img[contains(@src,'#{@space1.url}')]")
        expect(page).to_not have_xpath("//img[contains(@src,'#{@people1.url}')]")
        expect(page).to_not have_xpath("//img[contains(@src,'#{@sunset1.url}')]")
      end
    end
    
    it "can visit landscapes index page and find a title for each photo" do
      click_on("Landscapes")

      expect(page).to have_current_path(photos_path(genre: 'landscape'))

      expect(page).to have_content("Landscapes")

      within('.photo-index-title') do
        expect(page).to have_content(@landscape1.title)
      end
    end
  end
end
