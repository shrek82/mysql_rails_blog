# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20130412024621) do

  create_table "comments", :force => true do |t|
    t.integer "user_id", :limit => 8, :default => 0
    t.integer "news_id", :default => 0
    t.integer "event_id", :default => 0
    t.integer "bbs_unit_id", :limit => 8, :default => 0
    t.integer "class_room_id", :limit => 8, :default => 0
    t.integer "class_unit_id", :limit => 8, :default => 0
    t.integer "bubble_id", :limit => 8, :default => 0
    t.integer "weibo_id", :limit => 8, :default => 0
    t.integer "pic_id", :limit => 8, :default => 0
    t.integer "vote_id", :limit => 8, :default => 0
    t.integer "album_id", :limit => 8, :default => 0
    t.text "content"
    t.datetime "post_at"
    t.datetime "update_at"
    t.boolean "is_closed", :default => false
    t.string "clients", :limit => 50
    t.integer "score", :limit => 2
    t.string "client", :limit => 20
    t.string "quote_ids"
  end

  add_index "comments", ["album_id"], :name => "album_idx"
  add_index "comments", ["bbs_unit_id"], :name => "bbs_unit_id_idx"
  add_index "comments", ["class_room_id"], :name => "class_room_idx"
  add_index "comments", ["class_unit_id"], :name => "class_unit_idx"
  add_index "comments", ["event_id"], :name => "event_id_idx"
  add_index "comments", ["news_id"], :name => "news_id_idx"
  add_index "comments", ["pic_id"], :name => "pic_idx"
  add_index "comments", ["user_id"], :name => "user_id_idx"
  add_index "comments", ["weibo_id"], :name => "weibo_idx"

  create_table "content_categorys", :force => true do |t|
    t.string "name"
    t.integer "order_num", :limit => 2
    t.boolean "is_system", :default => false
  end

  create_table "contents", :force => true do |t|
    t.integer "type"
    t.string "title"
    t.integer "user_id"
    t.text "content"
    t.datetime "create_at"
    t.datetime "update_at"
    t.integer "order_num"
    t.string "redirect"
    t.integer "hit", :limit => 2
    t.boolean "is_release"
    t.boolean "is_system"
    t.boolean "is_close", :default => false
    t.date "start_date"
    t.date "end_date"
    t.string "img_path"
  end

  add_index "contents", ["type"], :name => "type_idx"

  create_table "posts", :force => true do |t|
    t.string "name"
    t.string "title"
    t.text "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "routes", :force => true do |t|
    t.string "title"
    t.string "short_title"
    t.string "tags"
    t.integer "category_id"
    t.integer "user_id"
    t.string "img_path"
    t.string "banner_path"
    t.integer "province_id"
    t.integer "city_id"
    t.integer "duration"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string "email", :limit => 60
    t.string "password", :limit => 40
  end

end
