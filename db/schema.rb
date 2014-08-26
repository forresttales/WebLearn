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

ActiveRecord::Schema.define(version: 20140816141150) do

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

  create_table "admin_user_images", force: true do |t|
    t.integer  "admin_user_id"
    t.string   "image_name",    limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "primary",                   default: false
  end

  add_index "admin_user_images", ["admin_user_id"], name: "index_admin_user_images_on_admin_user_id", using: :btree

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
    t.integer  "image_id"
  end

  add_index "admin_users", ["image_id"], name: "image_id_ix", using: :btree
  add_index "admin_users", ["username"], name: "index_admin_users_on_username", using: :btree

  create_table "archives", force: true do |t|
    t.integer  "article_id"
    t.string   "name_url"
    t.string   "name_file"
    t.string   "name_author"
    t.string   "name_admin"
    t.text     "key_words"
    t.date     "date_article"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "article_type"
    t.string   "description"
    t.string   "linkimg"
    t.string   "linkimg_url"
    t.string   "linktitle"
    t.string   "slug"
  end

  add_index "archives", ["article_id"], name: "index_archives_on_article_id", using: :btree
  add_index "archives", ["slug"], name: "index_archives_on_slug", unique: true, using: :btree

  create_table "contacts", force: true do |t|
    t.string   "name",       default: ""
    t.string   "email",      default: "", null: false
    t.string   "subject",    default: ""
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone",      default: ""
  end

  create_table "dl_contacts", force: true do |t|
    t.string   "name_first",     default: "", null: false
    t.string   "name_last",      default: "", null: false
    t.string   "name_title",     default: "", null: false
    t.string   "position_title", default: "", null: false
    t.string   "email",          default: "", null: false
    t.string   "phone",          default: "", null: false
    t.string   "name_pdf",       default: "", null: false
    t.integer  "int_pdf",        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventnews", force: true do |t|
    t.integer  "article_id"
    t.string   "name_url",     limit: 100
    t.string   "name_file",    limit: 50
    t.string   "name_author",  limit: 50
    t.string   "name_admin",   limit: 50
    t.text     "key_words"
    t.date     "date_article"
    t.string   "article_type", limit: 20
    t.string   "description",  limit: 200
    t.string   "linkimg",      limit: 50
    t.string   "linkimg_url",  limit: 100
    t.string   "linktitle",    limit: 200
    t.string   "slug",         limit: 200
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

  create_table "institute_images", force: true do |t|
    t.integer  "institute_id"
    t.string   "image_name",   limit: 100
    t.boolean  "primary",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institute_images", ["institute_id"], name: "index_institute_images_on_institute_id", using: :btree

  create_table "institute_profiles", force: true do |t|
    t.integer  "institute_id"
    t.string   "name_logo",    limit: 100
    t.boolean  "has_logo",                 default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institute_profiles", ["institute_id"], name: "index_institute_profiles_on_institute_id", using: :btree

  create_table "institute_queries", force: true do |t|
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

  create_table "institute_query_results", force: true do |t|
    t.integer  "institute_id"
    t.integer  "institute_query_id"
    t.string   "name_result",                      limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "publisher_product_description_id"
    t.string   "description",                      limit: 200
    t.decimal  "price",                                        precision: 8, scale: 2
  end

  add_index "institute_query_results", ["institute_id"], name: "index_institute_query_results_on_institute_id", using: :btree
  add_index "institute_query_results", ["institute_query_id"], name: "index_institute_query_results_on_institute_query_id", using: :btree

  create_table "institute_settings", force: true do |t|
    t.integer  "institute_id"
    t.string   "background",   limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institute_settings", ["institute_id"], name: "index_institute_settings_on_institute_id", using: :btree

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

  create_table "mtab1lets", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "mtab2lets", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "mtab3lets", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "mtab4lets", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "mtab5lets", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "mtab6lets", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "mtab7lets", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "mtab8lets", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "mtablets", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  create_table "pages", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_file",  limit: 50
    t.string   "name_dir",   limit: 50
    t.string   "slug",       limit: 200
  end

  add_index "pages", ["slug"], name: "index_pages_on_slug", unique: true, using: :btree

  create_table "product_publishers", force: true do |t|
    t.integer  "publisher_id"
    t.string   "name",         limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "product_publishers", ["publisher_id"], name: "index_product_publishers_on_publisher_id", using: :btree

  create_table "profile_publishers", force: true do |t|
    t.integer  "publisher_id"
    t.string   "phone",        limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "profile_publishers", ["publisher_id"], name: "index_profile_publishers_on_publisher_id", using: :btree

  create_table "publisher_images", force: true do |t|
    t.integer  "publisher_id"
    t.string   "image_name",   limit: 100
    t.boolean  "primary",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publisher_images", ["publisher_id"], name: "index_publisher_images_on_publisher_id", using: :btree

  create_table "publisher_product_descriptions", force: true do |t|
    t.integer  "publisher_product_id"
    t.integer  "publisher_id"
    t.string   "description",            limit: 1000
    t.decimal  "price",                               precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type_content",           limit: 50
    t.string   "subject_category",       limit: 50
    t.integer  "type_content_index"
    t.integer  "subject_category_index"
    t.string   "name_product",           limit: 100
    t.string   "core_supplemental",      limit: 50
    t.string   "source_url",             limit: 300
    t.string   "topic",                  limit: 200
    t.string   "lesson_plan_subject",    limit: 300
    t.text     "word_description"
    t.string   "age_appropriate",        limit: 50
    t.integer  "age_appropriate_index"
    t.string   "grade",                  limit: 50
    t.integer  "grade_index"
    t.text     "metadata"
    t.string   "platform",               limit: 50
    t.integer  "platform_index"
    t.string   "versions",               limit: 300
    t.string   "pricing_model",          limit: 50
    t.integer  "pricing_model_index"
  end

  add_index "publisher_product_descriptions", ["publisher_id"], name: "index_publisher_product_descriptions_on_publisher_id", using: :btree
  add_index "publisher_product_descriptions", ["publisher_product_id"], name: "index_publisher_product_descriptions_on_publisher_product_id", using: :btree

  create_table "publisher_product_logos", force: true do |t|
    t.integer  "publisher_id"
    t.integer  "publisher_product_id"
    t.string   "image_name",           limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publisher_product_logos", ["publisher_id"], name: "index_publisher_product_logos_on_publisher_id", using: :btree
  add_index "publisher_product_logos", ["publisher_product_id"], name: "index_publisher_product_logos_on_publisher_product_id", using: :btree

  create_table "publisher_product_metadatatags", force: true do |t|
    t.integer  "publisher_id"
    t.integer  "publisher_product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_metadata",        limit: 100
    t.text     "text_metadata"
  end

  add_index "publisher_product_metadatatags", ["publisher_id"], name: "index_publisher_product_metadatatags_on_publisher_id", using: :btree
  add_index "publisher_product_metadatatags", ["publisher_product_id"], name: "index_publisher_product_metadatatags_on_publisher_product_id", using: :btree

  create_table "publisher_products", force: true do |t|
    t.integer  "publisher_id"
    t.string   "name_product",         limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "has_description",                  default: false
    t.string   "product_logo",         limit: 100
    t.boolean  "has_product_logo",                 default: false
    t.string   "product_metadata",     limit: 100
    t.boolean  "has_product_metadata",             default: false
  end

  add_index "publisher_products", ["publisher_id"], name: "index_publisher_products_on_publisher_id", using: :btree

  create_table "publisher_profiles", force: true do |t|
    t.integer  "publisher_id"
    t.string   "name_logo",    limit: 100
    t.boolean  "has_logo",                 default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publisher_profiles", ["publisher_id"], name: "index_publisher_profiles_on_publisher_id", using: :btree

  create_table "publisher_settings", force: true do |t|
    t.integer  "publisher_id"
    t.string   "background",   limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publisher_settings", ["publisher_id"], name: "index_publisher_settings_on_publisher_id", using: :btree

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

  create_table "recruiters", force: true do |t|
    t.integer  "user_id"
    t.string   "phone",      limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reg_communs", force: true do |t|
    t.string   "name_first",                 limit: 50
    t.string   "name_last",                  limit: 50
    t.string   "name_title",                 limit: 50
    t.string   "name_affiliation",           limit: 100
    t.string   "address",                    limit: 100
    t.string   "city",                       limit: 50
    t.string   "state",                      limit: 50
    t.string   "zip",                        limit: 10
    t.string   "phone",                      limit: 50
    t.string   "email",                                  default: "",    null: false
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

  create_table "reg_event_itins", force: true do |t|
    t.string   "city_state",      limit: 50
    t.date     "date_event"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "date_event_text", limit: 50
    t.integer  "order_display",              default: 0
  end

  create_table "reg_events", force: true do |t|
    t.string   "name_first",                    limit: 100
    t.string   "name_last",                     limit: 50
    t.string   "name_title",                    limit: 50
    t.string   "type_affiliation",              limit: 50
    t.string   "name_affiliation",              limit: 100
    t.string   "email",                                     default: "",    null: false
    t.string   "city_workshop",                 limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "address",                       limit: 50
    t.string   "city",                          limit: 50
    t.string   "state",                         limit: 50
    t.string   "zip",                           limit: 50
    t.string   "phone",                         limit: 50
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
  end

  create_table "reg_letters", force: true do |t|
    t.string   "email",                        default: "", null: false
    t.string   "name_title",       limit: 50
    t.string   "name_affiliation", limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reg_seminars", force: true do |t|
    t.string   "name_first",       limit: 50
    t.string   "name_last",        limit: 50
    t.string   "name_title",       limit: 50
    t.string   "type_affiliation", limit: 50
    t.string   "name_affiliation", limit: 100
    t.string   "address",          limit: 100
    t.string   "city",             limit: 50
    t.string   "state",            limit: 50
    t.string   "zip",              limit: 10
    t.string   "phone",            limit: 50
    t.string   "email",            limit: 100
    t.string   "email_cc_1",       limit: 100
    t.string   "email_cc_2",       limit: 100
    t.string   "string",           limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "seminar_1",                    default: false
    t.string   "seminar_1_text",   limit: 100
  end

  create_table "settings_publishers", force: true do |t|
    t.integer  "publisher_id"
    t.string   "background",   limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "settings_publishers", ["publisher_id"], name: "index_settings_publishers_on_publisher_id", using: :btree

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

  create_table "stores", force: true do |t|
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

  create_table "students", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone",      limit: 50
    t.integer  "user_id"
  end

  create_table "tab1lets", force: true do |t|
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

  create_table "tab2lets", force: true do |t|
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

  create_table "tab3lets", force: true do |t|
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

  create_table "tab4lets", force: true do |t|
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

  create_table "tablets", force: true do |t|
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

  create_table "teachers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name_first", limit: 50
    t.string   "name_last",  limit: 50
    t.string   "phone",      limit: 50
    t.integer  "user_id"
  end

  create_table "test_optouts", force: true do |t|
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
    t.string   "col_id",     limit: 50
  end

  create_table "uploads", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_images", force: true do |t|
    t.integer  "user_id"
    t.string   "image_name", limit: 100
    t.boolean  "primary",                default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_images", ["user_id"], name: "index_user_images_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",           limit: 50, default: ""
    t.string   "username",        limit: 50
    t.string   "password_digest"
    t.string   "remember_token"
    t.string   "account_type",    limit: 50
    t.boolean  "has_account",                default: false
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
