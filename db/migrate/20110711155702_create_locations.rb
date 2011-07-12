class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.text :name
      t.float :latitude
      t.float :longitude
      t.integer :note_id

      t.timestamps
    end

    change_column :locations, :id, :int8
    change_column :locations, :note_id, :int8
    change_column :locations, :latitude, :float8
    change_column :locations, :longitude, :float8
    add_index :locations, :note_id, :name => 'note_location_ix'
  end
end
