class CreateNotesTags < ActiveRecord::Migration
  def change
    create_table :notes_tags, :id => false do |t|
    t.integer :note_id
    t.integer :tag_id
    end

    change_column :notes_tags, :note_id, :int8
    change_column :notes_tags, :tag_id, :int8
  end
end
