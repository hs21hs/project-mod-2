class CreateAlbumPictures < ActiveRecord::Migration[6.0]
  def change
    create_table :album_pictures do |t|
      t.integer :album_id
      t.integer :picture_id

      t.timestamps
    end
  end
end
