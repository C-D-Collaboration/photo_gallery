class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :description
      t.string :genre

      t.timestamps
    end
  end
end
