class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
    t.text :name

    t.timestamps
    end

    change_column :tags, :id, :int8
  end
end
