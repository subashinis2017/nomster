class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :caption
      t.integer :photo_id
      t.integer :place_id
      t.timestamps
    end
  end
end
