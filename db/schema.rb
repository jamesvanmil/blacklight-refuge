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

ActiveRecord::Schema.define(version: 20151113183344) do

  create_table "admissions", force: :cascade do |t|
    t.integer  "age"
    t.string   "alias"
    t.boolean  "appearance_bad"
    t.boolean  "appearance_good"
    t.string   "by_whom_committed"
    t.boolean  "can_read"
    t.boolean  "can_write"
    t.boolean  "complaint_of_father"
    t.boolean  "complaint_of_mother"
    t.boolean  "complaint_of_police"
    t.date     "date"
    t.string   "disposal"
    t.boolean  "father_drinks"
    t.boolean  "father_living"
    t.string   "for_what_committed"
    t.string   "gender"
    t.boolean  "had_regular_work"
    t.boolean  "has_step_father"
    t.boolean  "has_step_mother"
    t.integer  "history_number"
    t.string   "image_no"
    t.boolean  "mother_drinks"
    t.boolean  "mother_living"
    t.string   "full_name"
    t.text     "no_of_reader"
    t.integer  "no_of_times_in_refuge"
    t.string   "parentage"
    t.boolean  "played_truant"
    t.string   "religion"
    t.boolean  "swears"
    t.boolean  "uses_liquour"
    t.boolean  "uses_tobacco"
    t.string   "whereborn_city"
    t.string   "whereborn_country"
    t.string   "whereborn_state"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.string   "user_type"
    t.string   "document_id"
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_type"
  end

  add_index "bookmarks", ["user_id"], name: "index_bookmarks_on_user_id"

  create_table "gallery_images", force: :cascade do |t|
    t.text     "title"
    t.text     "creator"
    t.text     "date"
    t.text     "description"
    t.text     "source_text"
    t.text     "source_link"
    t.text     "format"
    t.text     "subject"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "searches", force: :cascade do |t|
    t.text     "query_params"
    t.integer  "user_id"
    t.string   "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "searches", ["user_id"], name: "index_searches_on_user_id"

end
