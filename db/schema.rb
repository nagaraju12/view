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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150709091201) do

  create_table "categories", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "title",                   limit: 255
    t.text     "description",             limit: 65535
    t.decimal  "price",                                 precision: 10
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "photo_file_name",         limit: 255
    t.string   "photo_content_type",      limit: 255
    t.integer  "photo_file_size",         limit: 4
    t.datetime "photo_updated_at"
    t.string   "video_file_file_name",    limit: 255
    t.string   "video_file_content_type", limit: 255
    t.integer  "video_file_file_size",    limit: 4
    t.integer  "sub_category_id",         limit: 4
    t.integer  "category_id",             limit: 4
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "category_id", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "videos", force: :cascade do |t|
    t.string   "video_file_name",    limit: 255
    t.string   "video_content_type", limit: 255
    t.integer  "video_file_size",    limit: 4
    t.datetime "video_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
