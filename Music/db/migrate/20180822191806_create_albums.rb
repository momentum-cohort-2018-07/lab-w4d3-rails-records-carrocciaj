class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :artist_name
      t.string :year_released

      t.timestamps
    end
  end
end
