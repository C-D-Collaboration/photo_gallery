class AddUrlToPhotos < ActiveRecord::Migration[6.1]
  def change
    add_column :photos, :url, :string
  end
end
