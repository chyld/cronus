class AddDates < ActiveRecord::Migration
  def change
    add_column :notes, :begin_date, :timestamp
    add_column :notes, :end_date, :timestamp
  end
end
