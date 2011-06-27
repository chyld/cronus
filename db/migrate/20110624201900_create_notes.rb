class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :title
      t.text :body

      t.timestamps
    end

    change_column :notes, :id, :int8
  end
end
