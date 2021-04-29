class Photo < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :genre, presence: true
  validates :url, presence: true

  def self.get_all_photos(genre)
    where(genre: genre)
  end
end
