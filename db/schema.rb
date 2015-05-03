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

ActiveRecord::Schema.define(version: 20150503204445) do

  create_table "animal_files", force: :cascade do |t|
    t.string  "scrapbook_image"
    t.string  "animal_hero_image"
    t.integer "animal_id"
  end

  create_table "animals", force: :cascade do |t|
    t.string  "name"
    t.string  "breed"
    t.string  "age"
    t.string  "location"
    t.integer "owner_id"
    t.text    "description"
    t.string  "profile_image"
    t.boolean "feature"
  end

  create_table "consumers", force: :cascade do |t|
    t.string  "name"
    t.string  "username"
    t.string  "zip_code"
    t.string  "phone"
    t.string  "consumer_image"
    t.text    "description"
    t.integer "user_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string  "name"
    t.string  "phone"
    t.string  "address"
    t.string  "second_address"
    t.string  "city"
    t.string  "state"
    t.string  "zip"
    t.string  "profile_image"
    t.string  "website"
    t.integer "user_id"
    t.string  "hero_image"
    t.string  "email"
    t.string  "facebook_url"
    t.string  "twitter_url"
    t.string  "instagram_url"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "animal_id"
    t.integer "user_id"
    t.text    "body"
    t.boolean "private"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",               default: "",    null: false
    t.string   "encrypted_password",  default: "",    null: false
    t.datetime "remember_created_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_owner",            default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
