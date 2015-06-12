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

ActiveRecord::Schema.define(version: 20150608051459) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_landings", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_reg_communs", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_reg_event_conferences", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_reg_events", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_reg_letters", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admin_user_images", force: :cascade do |t|
    t.integer  "admin_user_id"
    t.string   "image_name",    limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "primary",                   default: false
  end

  add_index "admin_user_images", ["admin_user_id"], name: "index_admin_user_images_on_admin_user_id", using: :btree

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 100, default: "",    null: false
    t.string   "hashed_password",        limit: 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",               limit: 25
    t.string   "salt",                   limit: 40
    t.string   "name_first",             limit: 50
    t.string   "name_last",              limit: 50
    t.string   "password_digest",        limit: 255
    t.string   "remember_token",         limit: 255
    t.boolean  "admin",                              default: false
    t.boolean  "super_admin",                        default: false
    t.string   "auth_token",             limit: 255
    t.string   "password_reset_token",   limit: 255
    t.datetime "password_reset_sent_at"
  end

  add_index "admin_users", ["username"], name: "index_admin_users_on_username", using: :btree

  create_table "archives", force: :cascade do |t|
    t.integer  "article_id"
    t.string   "name_url",            limit: 255, default: "journal"
    t.string   "name_file",           limit: 255
    t.string   "name_author",         limit: 255
    t.string   "name_admin",          limit: 255
    t.text     "key_words"
    t.date     "date_article"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "article_type",        limit: 255
    t.string   "description",         limit: 255
    t.string   "linkimg",             limit: 255
    t.string   "linkimg_url",         limit: 255
    t.string   "linktitle",           limit: 255
    t.string   "slug",                limit: 255
    t.string   "subtitle_1",          limit: 255
    t.string   "subtitle_2",          limit: 255
    t.integer  "img_height",                      default: 200
    t.string   "linkimg_carousel"
    t.integer  "img_height_carousel",             default: 300
    t.string   "subtitle_1_carousel"
    t.string   "subtitle_2_carousel"
  end

  add_index "archives", ["article_id"], name: "index_archives_on_article_id", using: :btree
  add_index "archives", ["slug"], name: "index_archives_on_slug", unique: true, using: :btree

  create_table "contacts", force: :cascade do |t|
    t.string   "name",       limit: 255, default: ""
    t.string   "email",      limit: 255, default: "", null: false
    t.string   "subject",    limit: 255, default: ""
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone",      limit: 255, default: ""
  end

  create_table "dl_contacts", force: :cascade do |t|
    t.string   "name_first",     limit: 255, default: "", null: false
    t.string   "name_last",      limit: 255, default: "", null: false
    t.string   "name_title",     limit: 255, default: "", null: false
    t.string   "position_title", limit: 255, default: "", null: false
    t.string   "email",          limit: 255, default: "", null: false
    t.string   "phone",          limit: 255, default: "", null: false
    t.string   "name_pdf",       limit: 255, default: "", null: false
    t.integer  "int_pdf",                    default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255
    t.integer  "sluggable_id"
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "hit_counts", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "item_register_id", default: 0
    t.string   "user_email",       default: ""
  end

  add_index "hit_counts", ["item_register_id"], name: "index_hit_counts_on_item_register_id", using: :btree

  create_table "institute_images", force: :cascade do |t|
    t.integer  "institute_id"
    t.string   "image_name",   limit: 100
    t.boolean  "primary",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institute_images", ["institute_id"], name: "index_institute_images_on_institute_id", using: :btree

  create_table "institute_profiles", force: :cascade do |t|
    t.integer  "institute_id"
    t.string   "name_logo",    limit: 100
    t.boolean  "has_logo",                 default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institute_profiles", ["institute_id"], name: "index_institute_profiles_on_institute_id", using: :btree

  create_table "institute_queries", force: :cascade do |t|
    t.integer  "institute_id"
    t.string   "name_query",             limit: 100
    t.boolean  "has_result",                          default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type_content",           limit: 50
    t.string   "subject_category",       limit: 50
    t.string   "word_description",       limit: 1000
    t.integer  "type_content_index"
    t.integer  "subject_category_index"
  end

  add_index "institute_queries", ["institute_id"], name: "index_institute_queries_on_institute_id", using: :btree

  create_table "institute_query_results", force: :cascade do |t|
    t.integer  "institute_id"
    t.integer  "institute_query_id"
    t.string   "name_result",        limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institute_query_results", ["institute_id"], name: "index_institute_query_results_on_institute_id", using: :btree
  add_index "institute_query_results", ["institute_query_id"], name: "index_institute_query_results_on_institute_query_id", using: :btree

  create_table "institute_settings", force: :cascade do |t|
    t.integer  "institute_id"
    t.string   "background",   limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institute_settings", ["institute_id"], name: "index_institute_settings_on_institute_id", using: :btree

  create_table "institutes", force: :cascade do |t|
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

  create_table "item_registers", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "item_description", default: ""
    t.integer  "item_type",        default: 0
  end

  create_table "landings", force: :cascade do |t|
    t.string   "name_promo", limit: 50
    t.integer  "id_promo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",       limit: 100
    t.string   "email",      limit: 100
    t.string   "company",    limit: 100
  end

  create_table "mtab1lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.string   "col_26",     limit: 300
    t.string   "col_27",     limit: 300
    t.string   "col_28",     limit: 300
    t.string   "col_29",     limit: 300
    t.string   "col_30",     limit: 300
    t.string   "col_31",     limit: 300
    t.string   "col_32",     limit: 300
    t.string   "col_33",     limit: 300
    t.string   "col_34",     limit: 300
    t.string   "col_35",     limit: 300
    t.string   "col_36",     limit: 300
    t.string   "col_37",     limit: 300
    t.string   "col_38",     limit: 300
    t.string   "col_39",     limit: 300
    t.string   "col_40",     limit: 300
    t.integer  "col_41",                 default: 0
    t.integer  "col_42",                 default: 0
    t.integer  "col_43",                 default: 0
    t.integer  "col_44",                 default: 0
    t.integer  "col_45",                 default: 0
    t.integer  "col_46",                 default: 0
    t.integer  "col_47",                 default: 0
    t.integer  "col_48",                 default: 0
    t.integer  "col_49",                 default: 0
    t.integer  "col_50",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtab2lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.string   "col_26",     limit: 300
    t.string   "col_27",     limit: 300
    t.string   "col_28",     limit: 300
    t.string   "col_29",     limit: 300
    t.string   "col_30",     limit: 300
    t.string   "col_31",     limit: 300
    t.string   "col_32",     limit: 300
    t.string   "col_33",     limit: 300
    t.string   "col_34",     limit: 300
    t.string   "col_35",     limit: 300
    t.string   "col_36",     limit: 300
    t.string   "col_37",     limit: 300
    t.string   "col_38",     limit: 300
    t.string   "col_39",     limit: 300
    t.string   "col_40",     limit: 300
    t.integer  "col_41",                 default: 0
    t.integer  "col_42",                 default: 0
    t.integer  "col_43",                 default: 0
    t.integer  "col_44",                 default: 0
    t.integer  "col_45",                 default: 0
    t.integer  "col_46",                 default: 0
    t.integer  "col_47",                 default: 0
    t.integer  "col_48",                 default: 0
    t.integer  "col_49",                 default: 0
    t.integer  "col_50",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtab3lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.string   "col_26",     limit: 300
    t.string   "col_27",     limit: 300
    t.string   "col_28",     limit: 300
    t.string   "col_29",     limit: 300
    t.string   "col_30",     limit: 300
    t.string   "col_31",     limit: 300
    t.string   "col_32",     limit: 300
    t.string   "col_33",     limit: 300
    t.string   "col_34",     limit: 300
    t.string   "col_35",     limit: 300
    t.string   "col_36",     limit: 300
    t.string   "col_37",     limit: 300
    t.string   "col_38",     limit: 300
    t.string   "col_39",     limit: 300
    t.string   "col_40",     limit: 300
    t.integer  "col_41",                 default: 0
    t.integer  "col_42",                 default: 0
    t.integer  "col_43",                 default: 0
    t.integer  "col_44",                 default: 0
    t.integer  "col_45",                 default: 0
    t.integer  "col_46",                 default: 0
    t.integer  "col_47",                 default: 0
    t.integer  "col_48",                 default: 0
    t.integer  "col_49",                 default: 0
    t.integer  "col_50",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtab4lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.string   "col_26",     limit: 300
    t.string   "col_27",     limit: 300
    t.string   "col_28",     limit: 300
    t.string   "col_29",     limit: 300
    t.string   "col_30",     limit: 300
    t.string   "col_31",     limit: 300
    t.string   "col_32",     limit: 300
    t.string   "col_33",     limit: 300
    t.string   "col_34",     limit: 300
    t.string   "col_35",     limit: 300
    t.string   "col_36",     limit: 300
    t.string   "col_37",     limit: 300
    t.string   "col_38",     limit: 300
    t.string   "col_39",     limit: 300
    t.string   "col_40",     limit: 300
    t.integer  "col_41",                 default: 0
    t.integer  "col_42",                 default: 0
    t.integer  "col_43",                 default: 0
    t.integer  "col_44",                 default: 0
    t.integer  "col_45",                 default: 0
    t.integer  "col_46",                 default: 0
    t.integer  "col_47",                 default: 0
    t.integer  "col_48",                 default: 0
    t.integer  "col_49",                 default: 0
    t.integer  "col_50",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtab5lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.string   "col_26",     limit: 300
    t.string   "col_27",     limit: 300
    t.string   "col_28",     limit: 300
    t.string   "col_29",     limit: 300
    t.string   "col_30",     limit: 300
    t.string   "col_31",     limit: 300
    t.string   "col_32",     limit: 300
    t.string   "col_33",     limit: 300
    t.string   "col_34",     limit: 300
    t.string   "col_35",     limit: 300
    t.string   "col_36",     limit: 300
    t.string   "col_37",     limit: 300
    t.string   "col_38",     limit: 300
    t.string   "col_39",     limit: 300
    t.string   "col_40",     limit: 300
    t.integer  "col_41",                 default: 0
    t.integer  "col_42",                 default: 0
    t.integer  "col_43",                 default: 0
    t.integer  "col_44",                 default: 0
    t.integer  "col_45",                 default: 0
    t.integer  "col_46",                 default: 0
    t.integer  "col_47",                 default: 0
    t.integer  "col_48",                 default: 0
    t.integer  "col_49",                 default: 0
    t.integer  "col_50",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtab6lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.string   "col_26",     limit: 300
    t.string   "col_27",     limit: 300
    t.string   "col_28",     limit: 300
    t.string   "col_29",     limit: 300
    t.string   "col_30",     limit: 300
    t.string   "col_31",     limit: 300
    t.string   "col_32",     limit: 300
    t.string   "col_33",     limit: 300
    t.string   "col_34",     limit: 300
    t.string   "col_35",     limit: 300
    t.string   "col_36",     limit: 300
    t.string   "col_37",     limit: 300
    t.string   "col_38",     limit: 300
    t.string   "col_39",     limit: 300
    t.string   "col_40",     limit: 300
    t.integer  "col_41",                 default: 0
    t.integer  "col_42",                 default: 0
    t.integer  "col_43",                 default: 0
    t.integer  "col_44",                 default: 0
    t.integer  "col_45",                 default: 0
    t.integer  "col_46",                 default: 0
    t.integer  "col_47",                 default: 0
    t.integer  "col_48",                 default: 0
    t.integer  "col_49",                 default: 0
    t.integer  "col_50",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtab7lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.string   "col_26",     limit: 300
    t.string   "col_27",     limit: 300
    t.string   "col_28",     limit: 300
    t.string   "col_29",     limit: 300
    t.string   "col_30",     limit: 300
    t.string   "col_31",     limit: 300
    t.string   "col_32",     limit: 300
    t.string   "col_33",     limit: 300
    t.string   "col_34",     limit: 300
    t.string   "col_35",     limit: 300
    t.string   "col_36",     limit: 300
    t.string   "col_37",     limit: 300
    t.string   "col_38",     limit: 300
    t.string   "col_39",     limit: 300
    t.string   "col_40",     limit: 300
    t.integer  "col_41",                 default: 0
    t.integer  "col_42",                 default: 0
    t.integer  "col_43",                 default: 0
    t.integer  "col_44",                 default: 0
    t.integer  "col_45",                 default: 0
    t.integer  "col_46",                 default: 0
    t.integer  "col_47",                 default: 0
    t.integer  "col_48",                 default: 0
    t.integer  "col_49",                 default: 0
    t.integer  "col_50",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtab8lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.string   "col_26",     limit: 300
    t.string   "col_27",     limit: 300
    t.string   "col_28",     limit: 300
    t.string   "col_29",     limit: 300
    t.string   "col_30",     limit: 300
    t.string   "col_31",     limit: 300
    t.string   "col_32",     limit: 300
    t.string   "col_33",     limit: 300
    t.string   "col_34",     limit: 300
    t.string   "col_35",     limit: 300
    t.string   "col_36",     limit: 300
    t.string   "col_37",     limit: 300
    t.string   "col_38",     limit: 300
    t.string   "col_39",     limit: 300
    t.string   "col_40",     limit: 300
    t.integer  "col_41",                 default: 0
    t.integer  "col_42",                 default: 1
    t.integer  "col_43",                 default: 1
    t.integer  "col_44",                 default: 1
    t.integer  "col_45",                 default: 1
    t.integer  "col_46",                 default: 1
    t.integer  "col_47",                 default: 1
    t.integer  "col_48",                 default: 0
    t.integer  "col_49",                 default: 0
    t.integer  "col_50",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mtablets", force: :cascade do |t|
    t.integer  "col_id"
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.string   "col_26",     limit: 300
    t.string   "col_27",     limit: 300
    t.string   "col_28",     limit: 300
    t.string   "col_29",     limit: 300
    t.string   "col_30",     limit: 300
    t.string   "col_31",     limit: 300
    t.string   "col_32",     limit: 300
    t.string   "col_33",     limit: 300
    t.string   "col_34",     limit: 300
    t.string   "col_35",     limit: 300
    t.string   "col_36",     limit: 300
    t.string   "col_37",     limit: 300
    t.string   "col_38",     limit: 300
    t.string   "col_39",     limit: 300
    t.string   "col_40",     limit: 300
    t.integer  "col_41",                 default: 0
    t.integer  "col_42",                 default: 0
    t.integer  "col_43",                 default: 0
    t.integer  "col_44",                 default: 0
    t.integer  "col_45",                 default: 0
    t.integer  "col_46",                 default: 0
    t.integer  "col_47",                 default: 0
    t.integer  "col_48",                 default: 0
    t.integer  "col_49",                 default: 0
    t.integer  "col_50",                 default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publisher_images", force: :cascade do |t|
    t.integer  "publisher_id"
    t.string   "image_name",   limit: 100
    t.boolean  "primary",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publisher_images", ["publisher_id"], name: "index_publisher_images_on_publisher_id", using: :btree

  create_table "publisher_product_descriptions", force: :cascade do |t|
    t.integer  "publisher_product_id"
    t.integer  "publisher_id"
    t.string   "description",            limit: 1000
    t.decimal  "price",                               precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type_content",           limit: 50
    t.string   "subject_category",       limit: 50
    t.string   "word_description",       limit: 1000
    t.integer  "type_content_index"
    t.integer  "subject_category_index"
  end

  add_index "publisher_product_descriptions", ["publisher_id"], name: "index_publisher_product_descriptions_on_publisher_id", using: :btree
  add_index "publisher_product_descriptions", ["publisher_product_id"], name: "index_publisher_product_descriptions_on_publisher_product_id", using: :btree

  create_table "publisher_products", force: :cascade do |t|
    t.integer  "publisher_id"
    t.string   "name_product",    limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "has_description",             default: false
  end

  add_index "publisher_products", ["publisher_id"], name: "index_publisher_products_on_publisher_id", using: :btree

  create_table "publisher_profiles", force: :cascade do |t|
    t.integer  "publisher_id"
    t.string   "name_logo",    limit: 100
    t.boolean  "has_logo",                 default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publisher_profiles", ["publisher_id"], name: "index_publisher_profiles_on_publisher_id", using: :btree

  create_table "publisher_settings", force: :cascade do |t|
    t.integer  "publisher_id"
    t.string   "background",   limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publisher_settings", ["publisher_id"], name: "index_publisher_settings_on_publisher_id", using: :btree

  create_table "publishers", force: :cascade do |t|
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

  create_table "recruiters", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "phone",      limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reg_communs", force: :cascade do |t|
    t.string   "name_first",                 limit: 50
    t.string   "name_last",                  limit: 50
    t.string   "name_title",                 limit: 50
    t.string   "name_affiliation",           limit: 100
    t.string   "address",                    limit: 100
    t.string   "city",                       limit: 50
    t.string   "state",                      limit: 50
    t.string   "zip",                        limit: 10
    t.string   "phone",                      limit: 50
    t.string   "email",                      limit: 255, default: "",    null: false
    t.string   "institution_size",           limit: 50
    t.string   "characterize_decision",      limit: 50
    t.text     "characterize_area"
    t.text     "survey_preferences"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "level_other",                limit: 100
    t.string   "public_private",             limit: 50
    t.string   "employee_number",            limit: 100
    t.string   "characterize_area_other",    limit: 200
    t.boolean  "level_1",                                default: false
    t.boolean  "level_2",                                default: false
    t.boolean  "level_3",                                default: false
    t.boolean  "level_4",                                default: false
    t.boolean  "level_5",                                default: false
    t.boolean  "level_6",                                default: false
    t.boolean  "level_7",                                default: false
    t.string   "level_1_text",               limit: 200
    t.string   "level_2_text",               limit: 200
    t.string   "level_3_text",               limit: 200
    t.string   "level_4_text",               limit: 200
    t.string   "level_5_text",               limit: 200
    t.string   "level_6_text",               limit: 200
    t.string   "level_7_text",               limit: 200
    t.boolean  "characterize_area_1",                    default: false
    t.boolean  "characterize_area_2",                    default: false
    t.boolean  "characterize_area_3",                    default: false
    t.boolean  "characterize_area_4",                    default: false
    t.boolean  "characterize_area_5",                    default: false
    t.boolean  "characterize_area_6",                    default: false
    t.boolean  "characterize_area_7",                    default: false
    t.boolean  "characterize_area_8",                    default: false
    t.boolean  "characterize_area_9",                    default: false
    t.boolean  "characterize_area_10",                   default: false
    t.boolean  "survey_preferences_1",                   default: false
    t.boolean  "survey_preferences_2",                   default: false
    t.boolean  "survey_preferences_3",                   default: false
    t.boolean  "survey_preferences_4",                   default: false
    t.boolean  "survey_preferences_5",                   default: false
    t.string   "characterize_area_1_text",   limit: 200
    t.string   "characterize_area_2_text",   limit: 200
    t.string   "characterize_area_3_text",   limit: 200
    t.string   "characterize_area_4_text",   limit: 200
    t.string   "characterize_area_5_text",   limit: 200
    t.string   "characterize_area_6_text",   limit: 200
    t.string   "characterize_area_7_text",   limit: 200
    t.string   "characterize_area_8_text",   limit: 200
    t.string   "characterize_area_9_text",   limit: 200
    t.string   "characterize_area_10_text",  limit: 200
    t.string   "survey_preferences_1_text",  limit: 200
    t.string   "survey_preferences_2_text",  limit: 200
    t.string   "survey_preferences_3_text",  limit: 200
    t.string   "survey_preferences_4_text",  limit: 200
    t.string   "survey_preferences_5_text",  limit: 200
    t.string   "institution_size_text",      limit: 100
    t.string   "employee_number_text",       limit: 100
    t.string   "characterize_decision_text", limit: 100
  end

  create_table "reg_event_conferences", force: :cascade do |t|
    t.string   "name_first",       limit: 255, default: "", null: false
    t.string   "name_last",        limit: 255, default: "", null: false
    t.string   "name_title",       limit: 255, default: "", null: false
    t.string   "position_title",   limit: 255, default: "", null: false
    t.string   "type_affiliation", limit: 255, default: "", null: false
    t.string   "name_affiliation", limit: 255, default: "", null: false
    t.string   "address",          limit: 255, default: "", null: false
    t.string   "city",             limit: 255, default: "", null: false
    t.string   "state",            limit: 255, default: "", null: false
    t.string   "zip",              limit: 255, default: "", null: false
    t.string   "phone",            limit: 255, default: "", null: false
    t.string   "phone_mobile",     limit: 255, default: "", null: false
    t.string   "email",            limit: 255, default: "", null: false
    t.string   "topic",            limit: 255, default: "", null: false
    t.text     "description",                  default: "", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reg_event_itins", force: :cascade do |t|
    t.string   "city_state",      limit: 50
    t.date     "date_event"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date_event_text", limit: 50
    t.integer  "order_display",              default: 0
  end

  create_table "reg_events", force: :cascade do |t|
    t.string   "name_first",                    limit: 100
    t.string   "name_last",                     limit: 100
    t.string   "name_title",                    limit: 200
    t.string   "type_affiliation",              limit: 200
    t.string   "name_affiliation",              limit: 200
    t.string   "address",                       limit: 200
    t.string   "city",                          limit: 100
    t.string   "state",                         limit: 50
    t.string   "zip",                           limit: 50
    t.string   "phone",                         limit: 50
    t.string   "email",                         limit: 255, default: "",    null: false
    t.string   "city_workshop",                 limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email_cc_1",                    limit: 100
    t.string   "email_cc_2",                    limit: 100
    t.boolean  "city_workshop_1",                           default: false
    t.boolean  "city_workshop_2",                           default: false
    t.boolean  "city_workshop_3",                           default: false
    t.boolean  "city_workshop_4",                           default: false
    t.boolean  "city_workshop_5",                           default: false
    t.boolean  "city_workshop_6",                           default: false
    t.boolean  "city_workshop_7",                           default: false
    t.boolean  "city_workshop_8",                           default: false
    t.boolean  "city_workshop_9",                           default: false
    t.boolean  "city_workshop_10",                          default: false
    t.boolean  "city_workshop_11",                          default: false
    t.boolean  "city_workshop_12",                          default: false
    t.boolean  "city_workshop_13",                          default: false
    t.string   "city_workshop_1_text",          limit: 100
    t.string   "city_workshop_2_text",          limit: 100
    t.string   "city_workshop_3_text",          limit: 100
    t.string   "city_workshop_4_text",          limit: 100
    t.string   "city_workshop_5_text",          limit: 100
    t.string   "city_workshop_6_text",          limit: 100
    t.string   "city_workshop_7_text",          limit: 100
    t.string   "city_workshop_8_text",          limit: 100
    t.string   "city_workshop_9_text",          limit: 100
    t.string   "city_workshop_10_text",         limit: 100
    t.string   "city_workshop_11_text",         limit: 100
    t.string   "city_workshop_12_text",         limit: 100
    t.string   "city_workshop_13_text",         limit: 100
    t.boolean  "city_workshop_14",                          default: false
    t.string   "city_workshop_14_text",         limit: 100
    t.boolean  "city_workshop_15",                          default: false
    t.string   "city_workshop_15_text",         limit: 100
    t.integer  "city_workshop_1_session"
    t.integer  "city_workshop_2_session"
    t.integer  "city_workshop_3_session"
    t.integer  "city_workshop_4_session"
    t.integer  "city_workshop_5_session"
    t.integer  "city_workshop_6_session"
    t.integer  "city_workshop_7_session"
    t.integer  "city_workshop_8_session"
    t.integer  "city_workshop_9_session"
    t.integer  "city_workshop_10_session"
    t.integer  "city_workshop_11_session"
    t.integer  "city_workshop_12_session"
    t.integer  "city_workshop_13_session"
    t.integer  "city_workshop_14_session"
    t.string   "city_workshop_1_session_text",  limit: 50
    t.string   "city_workshop_2_session_text",  limit: 50
    t.string   "city_workshop_3_session_text",  limit: 50
    t.string   "city_workshop_4_session_text",  limit: 50
    t.string   "city_workshop_5_session_text",  limit: 50
    t.string   "city_workshop_6_session_text",  limit: 50
    t.string   "city_workshop_7_session_text",  limit: 50
    t.string   "city_workshop_8_session_text",  limit: 50
    t.string   "city_workshop_9_session_text",  limit: 50
    t.string   "city_workshop_10_session_text", limit: 50
    t.string   "city_workshop_11_session_text", limit: 50
    t.string   "city_workshop_12_session_text", limit: 50
    t.string   "city_workshop_13_session_text", limit: 50
    t.string   "city_workshop_14_session_text", limit: 50
    t.string   "phone_mobile",                  limit: 100
    t.string   "name_title_sir",                limit: 100
    t.boolean  "city_workshop_16",                          default: false
    t.string   "city_workshop_16_text",         limit: 100
    t.boolean  "city_workshop_17",                          default: false
    t.string   "city_workshop_17_text",         limit: 100
    t.boolean  "city_workshop_18",                          default: false
    t.string   "city_workshop_18_text",         limit: 100
    t.boolean  "city_workshop_19",                          default: false
    t.string   "city_workshop_19_text",         limit: 100
    t.boolean  "city_workshop_20",                          default: false
    t.string   "city_workshop_20_text",         limit: 100
    t.boolean  "city_workshop_21",                          default: false
    t.string   "city_workshop_21_text",         limit: 100
    t.boolean  "city_workshop_22",                          default: false
    t.string   "city_workshop_22_text",         limit: 100
    t.boolean  "city_workshop_23",                          default: false
    t.string   "city_workshop_23_text",         limit: 100
    t.boolean  "city_workshop_24",                          default: false
    t.string   "city_workshop_24_text",         limit: 100
    t.boolean  "city_workshop_25",                          default: false
    t.string   "city_workshop_25_text",         limit: 100
  end

  create_table "reg_letters", force: :cascade do |t|
    t.string   "email",            limit: 255, default: "", null: false
    t.string   "name_title",       limit: 50
    t.string   "name_affiliation", limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "prof_title",       limit: 255
    t.string   "name_first",       limit: 255
    t.string   "name_last",        limit: 255
    t.string   "address",          limit: 255
    t.string   "city",             limit: 255
    t.string   "state",            limit: 255
    t.string   "zip",              limit: 255
    t.string   "country",          limit: 255
    t.string   "phone",            limit: 255
    t.string   "pub_priv",         limit: 255
  end

  create_table "reg_seminars", force: :cascade do |t|
    t.string   "name_first",       limit: 100
    t.string   "name_last",        limit: 100
    t.string   "name_title",       limit: 200
    t.string   "type_affiliation", limit: 200
    t.string   "name_affiliation", limit: 100
    t.string   "address",          limit: 100
    t.string   "city",             limit: 100
    t.string   "state",            limit: 50
    t.string   "zip",              limit: 50
    t.string   "phone",            limit: 50
    t.string   "email",            limit: 100
    t.string   "email_cc_1",       limit: 100
    t.string   "email_cc_2",       limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "seminar_1",                    default: false
    t.string   "seminar_1_text",   limit: 100
  end

  create_table "registers", force: :cascade do |t|
    t.integer  "account_id"
    t.string   "username",        limit: 50
    t.boolean  "has_account"
    t.string   "account_type",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "admin"
    t.string   "remember_token",  limit: 255
    t.string   "password_digest", limit: 255
  end

  add_index "registers", ["account_id", "username"], name: "index_registers_on_account_id_and_username", using: :btree
  add_index "registers", ["remember_token"], name: "index_registers_on_remember_token", using: :btree

  create_table "share_files", force: :cascade do |t|
    t.string   "name_originator", limit: 50
    t.string   "name_file",       limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stores", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_type",    limit: 100
    t.string   "salutation",   limit: 100
    t.string   "name_first",   limit: 100
    t.string   "name_last",    limit: 100
    t.string   "name_title",   limit: 100
    t.string   "institute",    limit: 300
    t.string   "department",   limit: 300
    t.string   "address_1",    limit: 300
    t.string   "address_2",    limit: 300
    t.string   "city",         limit: 100
    t.string   "state",        limit: 100
    t.string   "zip",          limit: 100
    t.string   "country",      limit: 100
    t.string   "phone",        limit: 200
    t.string   "fax",          limit: 200
    t.string   "phone_direct", limit: 200
    t.string   "phone_mobile", limit: 200
    t.string   "email",        limit: 300
    t.string   "website",      limit: 300
  end

  create_table "students", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone",      limit: 50
    t.integer  "user_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.integer  "institute_id"
    t.string   "name",         limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tab1lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tab2lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tab3lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tab4lets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tablets", force: :cascade do |t|
    t.string   "col_1",      limit: 300
    t.string   "col_2",      limit: 300
    t.string   "col_3",      limit: 300
    t.string   "col_4",      limit: 300
    t.string   "col_5",      limit: 300
    t.string   "col_6",      limit: 300
    t.string   "col_7",      limit: 300
    t.string   "col_8",      limit: 300
    t.string   "col_9",      limit: 300
    t.string   "col_10",     limit: 300
    t.string   "col_11",     limit: 300
    t.string   "col_12",     limit: 300
    t.string   "col_13",     limit: 300
    t.string   "col_14",     limit: 300
    t.string   "col_15",     limit: 300
    t.string   "col_16",     limit: 300
    t.string   "col_17",     limit: 300
    t.string   "col_18",     limit: 300
    t.string   "col_19",     limit: 300
    t.string   "col_20",     limit: 300
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "col_21",     limit: 300
    t.string   "col_22",     limit: 300
    t.string   "col_23",     limit: 300
    t.string   "col_24",     limit: 300
    t.string   "col_25",     limit: 300
    t.integer  "col_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_first", limit: 50
    t.string   "name_last",  limit: 50
    t.string   "phone",      limit: 50
    t.integer  "user_id"
  end

  create_table "uploads", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_contacts", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_institutes", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_surveys", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_vendors", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",           limit: 50,  default: ""
    t.string   "username",        limit: 50
    t.string   "password_digest", limit: 255
    t.string   "remember_token",  limit: 255
    t.string   "account_type",    limit: 50
    t.boolean  "has_account",                 default: false
    t.string   "name_first",      limit: 50
    t.string   "name_last",       limit: 50
    t.boolean  "admin",                       default: false
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

  create_table "vendors", force: :cascade do |t|
    t.string   "name",       limit: 50
    t.string   "email",      limit: 255, default: "", null: false
    t.string   "address",    limit: 50
    t.text     "contacts"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visitors", force: :cascade do |t|
    t.integer  "count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
