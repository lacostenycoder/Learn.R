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

ActiveRecord::Schema.define(version: 20140427221948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "code_lessons", force: true do |t|
    t.integer "points"
    t.integer "level"
    t.string  "img"
    t.text    "map_code"
    t.text    "lesson_text"
    t.text    "question_text"
    t.integer "start_row"
    t.integer "start_col"
    t.integer "solution_row"
    t.integer "solution_col"
    t.string  "category"
    t.string  "title"
    t.integer "global_level"
  end

  create_table "code_lessons_users", id: false, force: true do |t|
    t.integer "code_lesson_id", null: false
    t.integer "user_id",        null: false
  end

  add_index "code_lessons_users", ["code_lesson_id", "user_id"], name: "index_code_lessons_users_on_code_lesson_id_and_user_id", using: :btree
  add_index "code_lessons_users", ["user_id", "code_lesson_id"], name: "index_code_lessons_users_on_user_id_and_code_lesson_id", using: :btree

  create_table "music_lessons", force: true do |t|
    t.integer "points"
    t.integer "level"
    t.string  "img"
    t.text    "lesson_text"
    t.text    "question_text"
    t.text    "solution_key_pattern"
    t.string  "category"
    t.string  "title"
    t.integer "global_level"
  end

  create_table "music_lessons_users", id: false, force: true do |t|
    t.integer "music_lesson_id", null: false
    t.integer "user_id",         null: false
  end

  add_index "music_lessons_users", ["music_lesson_id", "user_id"], name: "index_music_lessons_users_on_music_lesson_id_and_user_id", using: :btree
  add_index "music_lessons_users", ["user_id", "music_lesson_id"], name: "index_music_lessons_users_on_user_id_and_music_lesson_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "avatar"
    t.string   "username"
    t.integer  "score"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
