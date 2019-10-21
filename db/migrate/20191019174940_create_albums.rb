class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table :albums do |t|
      t.string :album_name
      t.integer :user_id
      t.boolean :main

      t.timestamps
    end
  end
end
