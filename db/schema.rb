# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110707191050) do

  create_table "assets", :force => true do |t|
    t.text     "file"
    t.integer  "note_id",    :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assets", ["note_id"], :name => "note_asset_ix"

  create_table "notes", :force => true do |t|
    t.text     "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "begin_date"
    t.datetime "end_date"
  end

  create_table "notes_tags", :id => false, :force => true do |t|
    t.integer "note_id", :limit => 8
    t.integer "tag_id",  :limit => 8
  end

  create_table "tags", :force => true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "urls", :force => true do |t|
    t.text     "link"
    t.integer  "note_id",    :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "urls", ["note_id"], :name => "note_url_ix"

end
