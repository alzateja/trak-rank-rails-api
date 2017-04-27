class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.integer :ranking
      t.text :artist
      t.text :album
      t.text :image
      t.integer :year

      t.timestamps
    end
  end
end
