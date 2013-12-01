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

ActiveRecord::Schema.define(version: 20131130144634) do

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

  create_table "archives", force: true do |t|
    t.integer  "article_id"
    t.string   "name_url",     limit: 100
    t.string   "name_file",    limit: 50
    t.string   "name_author",  limit: 50
    t.string   "name_admin",   limit: 50
    t.text     "key_words"
    t.date     "date_article"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "article_type", limit: 20
  end

  add_index "archives", ["article_id"], name: "index_archives_on_article_id", using: :btree

  create_table "contacts", force: true do |t|
    t.string   "name",       limit: 50
    t.string   "email",                 default: "", null: false
    t.string   "subject",    limit: 50
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "edmatchs", force: true do |t|
    t.integer  "institute_id"
    t.text     "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "edmatchups", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "institutes", force: true do |t|
    t.string   "name",                       limit: 100
    t.string   "address",                    limit: 100
    t.string   "city",                       limit: 100
    t.string   "state",                      limit: 50
    t.string   "country",                    limit: 100
    t.integer  "zip"
    t.string   "main_phone",                 limit: 100
    t.string   "main_contact_email",         limit: 100
    t.string   "public_private",             limit: 10
    t.integer  "number_students"
    t.integer  "number_computing_devices"
    t.string   "post_rfp_link",              limit: 100
    t.string   "company_contact_name_first", limit: 100
    t.string   "company_contact_name_last",  limit: 100
    t.string   "name_title",                 limit: 50
    t.string   "company_contact_phone",      limit: 50
    t.string   "company_contact_email",      limit: 100
    t.boolean  "allow_add_products"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "publishers", force: true do |t|
    t.string   "name",                       limit: 100
    t.string   "address",                    limit: 100
    t.string   "city",                       limit: 100
    t.string   "state",                      limit: 50
    t.string   "country",                    limit: 100
    t.integer  "zip"
    t.string   "phone",                      limit: 100
    t.string   "url",                        limit: 100
    t.text     "description"
    t.string   "company_contact_name_first", limit: 100
    t.string   "company_contact_name_last",  limit: 100
    t.string   "company_contact_phone",      limit: 100
    t.string   "company_contact_email",      limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "reg_communs", force: true do |t|
    t.string   "name_first",            limit: 50
    t.string   "name_last",             limit: 50
    t.string   "name_title",            limit: 50
    t.string   "name_affiliation",      limit: 100
    t.string   "public_private",        limit: 10
    t.string   "address",               limit: 100
    t.string   "city",                  limit: 50
    t.string   "state",                 limit: 50
    t.string   "zip",                   limit: 10
    t.string   "phone",                 limit: 50
    t.string   "email",                             default: "", null: false
    t.string   "level",                 limit: 50
    t.string   "institution_size",      limit: 50
    t.string   "characterize_decision", limit: 50
    t.text     "characterize_area"
    t.text     "survey_preferences"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reg_events", force: true do |t|
    t.string   "name_first",       limit: 50
    t.string   "name_last",        limit: 50
    t.string   "name_title",       limit: 50
    t.string   "type_affiliation", limit: 50
    t.string   "name_affiliation", limit: 100
    t.string   "email",                        default: "", null: false
    t.string   "city_workshop",    limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address",          limit: 50
    t.string   "city",             limit: 50
    t.string   "state",            limit: 50
    t.string   "zip",              limit: 50
    t.string   "phone",            limit: 50
  end

  create_table "reg_letters", force: true do |t|
    t.string   "email",                        default: "", null: false
    t.string   "name_title",       limit: 50
    t.string   "name_affiliation", limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_first", limit: 50
    t.string   "name_last",  limit: 50
    t.string   "phone",      limit: 50
    t.integer  "user_id"
  end

  create_table "teachers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_first", limit: 50
    t.string   "name_last",  limit: 50
    t.string   "phone",      limit: 50
    t.integer  "user_id"
  end

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
    t.string   "email",           limit: 50, default: ""
    t.string   "username",        limit: 50
    t.boolean  "has_account"
    t.string   "account_type",    limit: 50
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",                      default: false
    t.string   "name_first",      limit: 50
    t.string   "name_last",       limit: 50
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "visitors", force: true do |t|
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
