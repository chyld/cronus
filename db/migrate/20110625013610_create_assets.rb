class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
    t.text :file
    t.integer :note_id

    t.timestamps
    end

    change_column :assets, :id, :int8
    change_column :assets, :note_id, :int8
    add_index :assets, :note_id, :name => 'note_asset_ix'
  end
end
