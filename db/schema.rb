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

ActiveRecord::Schema.define(version: 20170105090541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "Name"
    t.string   "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "dictionaries", force: :cascade do |t|
    t.integer  "IDDictionary"
    t.integer  "IDUSer"
    t.string   "Name"
    t.integer  "IDSourceLanguage"
    t.integer  "IDDestinationLanguage"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "ISOCode"
    t.string   "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "isAdmin"
  end

  create_table "word_categories", id: false, force: :cascade do |t|
    t.integer  "idword",     null: false
    t.integer  "idcategory", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "word_types", force: :cascade do |t|
    t.string   "Name"
    t.string   "Description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "words", force: :cascade do |t|
    t.string   "Word"
    t.string   "Translation"
    t.integer  "IDWordType"
    t.string   "IPA"
    t.integer  "IDDictionary"
    t.integer  "IDUser"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
