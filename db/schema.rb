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

ActiveRecord::Schema.define(version: 20131023160422) do

  create_table "answers", force: true do |t|
    t.text     "comment"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flowcharts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "dot"
    t.integer  "scenario_id"
    t.string   "image"
  end

  create_table "mail_deliveries", force: true do |t|
    t.string   "name"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_actions", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "page_id"
  end

  add_index "page_actions", ["page_id"], name: "index_page_actions_on_page_id"

  create_table "page_goals", force: true do |t|
    t.string   "title"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_images", force: true do |t|
    t.string   "name"
    t.string   "image"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_links", force: true do |t|
    t.string   "element_name"
    t.integer  "to_page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "page_id"
  end

  add_index "page_links", ["page_id"], name: "index_page_links_on_page_id"

  create_table "page_mail_deliveries", force: true do |t|
    t.integer  "page_id"
    t.integer  "mail_delivery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_mail_deliveries", ["mail_delivery_id"], name: "index_page_mail_deliveries_on_mail_delivery_id"
  add_index "page_mail_deliveries", ["page_id"], name: "index_page_mail_deliveries_on_page_id"

  create_table "page_preconditions", force: true do |t|
    t.string   "title"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_site_options", force: true do |t|
    t.integer  "page_id"
    t.integer  "site_option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_site_options", ["page_id"], name: "index_page_site_options_on_page_id"
  add_index "page_site_options", ["site_option_id"], name: "index_page_site_options_on_site_option_id"

  create_table "page_specs", force: true do |t|
    t.string   "title"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "questionable_id"
    t.string   "questionable_type"
  end

  create_table "scenarios", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scenarios_pages", id: false, force: true do |t|
    t.integer "scenario_id"
    t.integer "page_id"
  end

  create_table "site_options", force: true do |t|
    t.string   "name"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

end
