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

ActiveRecord::Schema.define(version: 20130916071523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: true do |t|
    t.string   "first_name",      limit: 25
    t.string   "last_name",       limit: 50
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "hashed_password", limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",        limit: 25
    t.string   "salt",            limit: 40
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "name",       limit: 50
    t.string   "email",                 default: "", null: false
    t.string   "subject",    limit: 50
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutes", force: true do |t|
    t.string   "name",       limit: 50
    t.string   "email",                 default: "", null: false
    t.string   "address",    limit: 50
    t.text     "contacts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "surveys", force: true do |t|
    t.integer  "institute_id"
    t.string   "name",         limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_contacts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_institutes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_surveys", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_vendors", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "vendors", force: true do |t|
    t.string   "name",       limit: 50
    t.string   "email",                 default: "", null: false
    t.string   "address",    limit: 50
    t.text     "contacts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
