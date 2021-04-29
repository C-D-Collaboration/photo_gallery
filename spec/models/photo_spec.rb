require 'rails_helper'

RSpec.describe Photo, type: :model do
  describe 'validations' do 
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:genre) }
    it { should validate_presence_of(:url) }
  end

  describe 'class methods' do 
    it 'can get all photos by genre' do
      photo1 = Photo.create!(title: "Beautiful mountains", description: "Look at dem mountains", genre: "landscape", url: 'https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683__340.png')
      photo2 = Photo.create!(title: "Beautiful mountains", description: "Look at dem mountains", genre: "landscape", url: 'https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683__340.png')
      expect(Photo.get_all_photos("landscape")).to eq([photo1, photo2])
    end

    it 'does not get photos that are not the given genre' do
      photo = Photo.create!(title: "Beautiful mountains", description: "Look at dem mountains", genre: "landscape", url: 'https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683__340.png')
      expect(Photo.get_all_photos('animals')).to eq([])
    end
  end
end
