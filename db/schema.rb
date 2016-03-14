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

ActiveRecord::Schema.define(version: 20160314001037) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contents", force: :cascade do |t|
    t.string   "slide_1_title"
    t.string   "slide_1_subtitle"
    t.string   "slide_2_title"
    t.string   "slide_2_subtitle"
    t.string   "slide_3_title"
    t.string   "slide_3_subtitle"
    t.string   "carousel_link_1"
    t.string   "carousel_link_1_text"
    t.string   "carousel_link_2"
    t.string   "carousel_link_2_text"
    t.string   "carousel_link_3"
    t.string   "carousel_link_3_text"
    t.string   "feature_1_title"
    t.text     "feature_1_text"
    t.string   "feature_2_title"
    t.text     "feature_2_text"
    t.string   "feature_3_title"
    t.text     "feature_3_text"
    t.string   "feature_4_title"
    t.text     "feature_4_text"
    t.string   "section_1_title"
    t.text     "section_1_first_paragraph"
    t.text     "section_1_second_paragraph"
    t.string   "section_2_title"
    t.text     "section_2_first_paragraph"
    t.text     "section_2_second_paragraph"
    t.string   "section_3_title"
    t.text     "section_3_first_paragraph"
    t.text     "section_3_second_paragraph"
    t.text     "about_us_first_paragraph"
    t.text     "about_us_second_paragraph"
    t.text     "about_us_third_paragraph"
    t.string   "about_us_1_title"
    t.text     "about_us_1_first_paragraph"
    t.text     "about_us_1_second_paragraph"
    t.string   "about_us_2_title"
    t.text     "about_us_2_first_paragraph"
    t.text     "about_us_2_second_paragraph"
    t.string   "about_us_3_title"
    t.text     "about_us_3_first_paragraph"
    t.text     "about_us_3_second_paragraph"
    t.text     "contact_us_paragraph"
    t.text     "faq_paragraph"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "faq_items", force: :cascade do |t|
    t.text     "question"
    t.text     "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string   "location"
    t.integer  "image_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "title"
    t.text     "caption"
  end

  create_table "product_images", force: :cascade do |t|
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "products", force: :cascade do |t|
    t.string   "title"
    t.text     "resume"
    t.integer  "product_type"
    t.text     "subtitle"
    t.integer  "price"
    t.text     "specifications"
    t.string   "section_title"
    t.text     "section_paragraph_1"
    t.text     "section_paragraph_2"
    t.integer  "quality_1"
    t.integer  "quality_2"
    t.integer  "quality_3"
    t.integer  "quality_4"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "steps", force: :cascade do |t|
    t.string   "title"
    t.text     "content"
    t.integer  "step_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
