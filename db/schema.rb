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

ActiveRecord::Schema.define(version: 20160208124950) do

  create_table "favs", force: :cascade do |t|
    t.integer  "list_id",    limit: 4
    t.integer  "song_id",    limit: 4
    t.integer  "member_id",  limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.boolean  "val"
  end

  add_index "favs", ["list_id"], name: "index_favs_on_list_id", using: :btree
  add_index "favs", ["member_id"], name: "index_favs_on_member_id", using: :btree
  add_index "favs", ["song_id"], name: "index_favs_on_song_id", using: :btree

  create_table "lists", force: :cascade do |t|
    t.integer  "member_id",  limit: 4
    t.integer  "song_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "lists", ["member_id"], name: "index_lists_on_member_id", using: :btree
  add_index "lists", ["song_id"], name: "index_lists_on_song_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "username",               limit: 255
  end

  add_index "members", ["email"], name: "index_members_on_email", unique: true, using: :btree
  add_index "members", ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "songname",   limit: 255
    t.string   "artist",     limit: 255
    t.text     "album",      limit: 65535
    t.string   "duration",   limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "timetables", force: :cascade do |t|
    t.integer  "list_id",    limit: 4
    t.datetime "playtime"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "timetables", ["list_id"], name: "index_timetables_on_list_id", using: :btree

  add_foreign_key "favs", "lists"
  add_foreign_key "favs", "members"
  add_foreign_key "favs", "songs"
  add_foreign_key "lists", "members"
  add_foreign_key "lists", "songs"
  add_foreign_key "timetables", "lists"
end
