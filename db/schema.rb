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

ActiveRecord::Schema.define(version: 20131230004626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_landings", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_reg_communs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_reg_events", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_reg_letters", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_users", force: true do |t|
    t.string   "email",           limit: 100, default: "", null: false
    t.string   "hashed_password", limit: 300
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",        limit: 30
    t.string   "salt",            limit: 300
    t.string   "name_first",      limit: 50
    t.string   "name_last",       limit: 50
    t.string   "password_digest"
    t.string   "remember_token"
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
    t.string   "description",  limit: 200
    t.string   "linkimg",      limit: 50
    t.string   "linkimg_url",  limit: 100
    t.string   "linktitle",    limit: 200
    t.string   "slug",         limit: 200
  end

  add_index "archives", ["article_id"], name: "index_archives_on_article_id", using: :btree
  add_index "archives", ["slug"], name: "index_archives_on_slug", unique: true, using: :btree

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

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug"
    t.integer  "sluggable_id"
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

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

  create_table "landings", force: true do |t|
    t.string   "name_promo", limit: 50
    t.integer  "id_promo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",       limit: 100
    t.string   "email",      limit: 100
    t.string   "company",    limit: 100
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
    t.string   "name_first",                limit: 50
    t.string   "name_last",                 limit: 50
    t.string   "name_title",                limit: 50
    t.string   "name_affiliation",          limit: 100
    t.string   "address",                   limit: 100
    t.string   "city",                      limit: 50
    t.string   "state",                     limit: 50
    t.string   "zip",                       limit: 10
    t.string   "phone",                     limit: 50
    t.string   "email",                                 default: "",    null: false
    t.string   "institution_size",          limit: 50
    t.string   "characterize_decision",     limit: 50
    t.text     "characterize_area"
    t.text     "survey_preferences"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "level_other",               limit: 100
    t.string   "public_private",            limit: 50
    t.string   "employee_number",           limit: 100
    t.string   "characterize_area_other",   limit: 200
    t.boolean  "level_1",                               default: false
    t.boolean  "level_2",                               default: false
    t.boolean  "level_3",                               default: false
    t.boolean  "level_4",                               default: false
    t.boolean  "level_5",                               default: false
    t.boolean  "level_6",                               default: false
    t.boolean  "level_7",                               default: false
    t.string   "level_1_text",              limit: 200
    t.string   "level_2_text",              limit: 200
    t.string   "level_3_text",              limit: 200
    t.string   "level_4_text",              limit: 200
    t.string   "level_5_text",              limit: 200
    t.string   "level_6_text",              limit: 200
    t.string   "level_7_text",              limit: 200
    t.boolean  "characterize_area_1",                   default: false
    t.boolean  "characterize_area_2",                   default: false
    t.boolean  "characterize_area_3",                   default: false
    t.boolean  "characterize_area_4",                   default: false
    t.boolean  "characterize_area_5",                   default: false
    t.boolean  "characterize_area_6",                   default: false
    t.boolean  "characterize_area_7",                   default: false
    t.boolean  "characterize_area_8",                   default: false
    t.boolean  "characterize_area_9",                   default: false
    t.boolean  "characterize_area_10",                  default: false
    t.boolean  "survey_preferences_1",                  default: false
    t.boolean  "survey_preferences_2",                  default: false
    t.boolean  "survey_preferences_3",                  default: false
    t.boolean  "survey_preferences_4",                  default: false
    t.boolean  "survey_preferences_5",                  default: false
    t.string   "characterize_area_1_text",  limit: 200
    t.string   "characterize_area_2_text",  limit: 200
    t.string   "characterize_area_3_text",  limit: 200
    t.string   "characterize_area_4_text",  limit: 200
    t.string   "characterize_area_5_text",  limit: 200
    t.string   "characterize_area_6_text",  limit: 200
    t.string   "characterize_area_7_text",  limit: 200
    t.string   "characterize_area_8_text",  limit: 200
    t.string   "characterize_area_9_text",  limit: 200
    t.string   "characterize_area_10_text", limit: 200
    t.string   "survey_preferences_1_text", limit: 200
    t.string   "survey_preferences_2_text", limit: 200
    t.string   "survey_preferences_3_text", limit: 200
    t.string   "survey_preferences_4_text", limit: 200
    t.string   "survey_preferences_5_text", limit: 200
  end

  create_table "reg_events", force: true do |t|
    t.string   "name_first",            limit: 50
    t.string   "name_last",             limit: 50
    t.string   "name_title",            limit: 50
    t.string   "type_affiliation",      limit: 50
    t.string   "name_affiliation",      limit: 100
    t.string   "email",                             default: "",    null: false
    t.string   "city_workshop",         limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address",               limit: 50
    t.string   "city",                  limit: 50
    t.string   "state",                 limit: 50
    t.string   "zip",                   limit: 50
    t.string   "phone",                 limit: 50
    t.string   "email_cc_1",            limit: 100
    t.string   "email_cc_2",            limit: 100
    t.boolean  "city_workshop_1",                   default: false
    t.boolean  "city_workshop_2",                   default: false
    t.boolean  "city_workshop_3",                   default: false
    t.boolean  "city_workshop_4",                   default: false
    t.boolean  "city_workshop_5",                   default: false
    t.boolean  "city_workshop_6",                   default: false
    t.boolean  "city_workshop_7",                   default: false
    t.boolean  "city_workshop_8",                   default: false
    t.boolean  "city_workshop_9",                   default: false
    t.boolean  "city_workshop_10",                  default: false
    t.boolean  "city_workshop_11",                  default: false
    t.boolean  "city_workshop_12",                  default: false
    t.boolean  "city_workshop_13",                  default: false
    t.string   "city_workshop_1_text",  limit: 100
    t.string   "city_workshop_2_text",  limit: 100
    t.string   "city_workshop_3_text",  limit: 100
    t.string   "city_workshop_4_text",  limit: 100
    t.string   "city_workshop_5_text",  limit: 100
    t.string   "city_workshop_6_text",  limit: 100
    t.string   "city_workshop_7_text",  limit: 100
    t.string   "city_workshop_8_text",  limit: 100
    t.string   "city_workshop_9_text",  limit: 100
    t.string   "city_workshop_10_text", limit: 100
    t.string   "city_workshop_11_text", limit: 100
    t.string   "city_workshop_12_text", limit: 100
    t.string   "city_workshop_13_text", limit: 100
    t.boolean  "city_workshop_14",                  default: false
    t.string   "city_workshop_14_text", limit: 100
  end

  create_table "reg_letters", force: true do |t|
    t.string   "email",                        default: "", null: false
    t.string   "name_title",       limit: 50
    t.string   "name_affiliation", limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "share_files", force: true do |t|
    t.string   "name_originator", limit: 50
    t.string   "name_file",       limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "static_pages", force: true do |t|
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

  create_table "uploads", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
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
