class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
    t.text :link
    t.integer :note_id

    t.timestamps
    end

    change_column :urls, :id, :int8
    change_column :urls, :note_id, :int8
    add_index :urls, :note_id, :name => 'note_url_ix'
  end
end
