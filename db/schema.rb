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

ActiveRecord::Schema.define(version: 20160624014610) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_coors", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "card_id"
    t.integer  "coordinate_id"
  end

  add_index "card_coors", ["card_id"], name: "index_card_coors_on_card_id", using: :btree
  add_index "card_coors", ["coordinate_id"], name: "index_card_coors_on_coordinate_id", using: :btree

  create_table "cards", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "cards", ["user_id"], name: "index_cards_on_user_id", using: :btree

  create_table "coordinates", force: :cascade do |t|
    t.integer  "column"
    t.integer  "row"
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "number"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "phones", ["user_id"], name: "index_phones_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "nombre"
    t.date     "vigencia"
    t.date     "emision"
    t.string   "tipo"
    t.integer  "saldo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_ques", force: :cascade do |t|
    t.string   "answer"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "question_id"
  end

  add_index "user_ques", ["question_id"], name: "index_user_ques_on_question_id", using: :btree
  add_index "user_ques", ["user_id"], name: "index_user_ques_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "surname"
    t.string   "type"
    t.integer  "counter"
    t.integer  "parent_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "card_coors", "cards"
  add_foreign_key "card_coors", "coordinates"
  add_foreign_key "cards", "users"
  add_foreign_key "phones", "users"
  add_foreign_key "user_ques", "questions"
  add_foreign_key "user_ques", "users"
end
