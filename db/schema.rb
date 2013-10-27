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

ActiveRecord::Schema.define(version: 20131027183326) do

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

  create_table "page_form_elements", force: true do |t|
    t.string   "element_name"
    t.string   "input_type"
    t.integer  "validation_id"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "required"
  end

  add_index "page_form_elements", ["page_id"], name: "index_page_form_elements_on_page_id"
  add_index "page_form_elements", ["validation_id"], name: "index_page_form_elements_on_validation_id"

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

  create_table "page_site_options", force: true do |t|
    t.integer  "page_id"
    t.integer  "site_option_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_site_options", ["page_id"], name: "index_page_site_options_on_page_id"
  add_index "page_site_options", ["site_option_id"], name: "index_page_site_options_on_site_option_id"

  create_table "page_site_preconditions", force: true do |t|
    t.integer  "page_id"
    t.integer  "site_precondition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_site_preconditions", ["page_id"], name: "index_page_site_preconditions_on_page_id"
  add_index "page_site_preconditions", ["site_precondition_id"], name: "index_page_site_preconditions_on_site_precondition_id"

  create_table "page_specs", force: true do |t|
    t.string   "title"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_validations", force: true do |t|
    t.integer  "page_id"
    t.integer  "validation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "page_validations", ["page_id"], name: "index_page_validations_on_page_id"
  add_index "page_validations", ["validation_id"], name: "index_page_validations_on_validation_id"

  create_table "pages", force: true do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  add_index "pages", ["project_id"], name: "index_pages_on_project_id"

  create_table "projects", force: true do |t|
    t.string   "title"
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

  create_table "site_preconditions", force: true do |t|
    t.string   "name"
    t.integer  "page_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "site_preconditions", ["page_id"], name: "index_site_preconditions_on_page_id"

  create_table "user_profiles", force: true do |t|
    t.string   "name"
    t.string   "avater"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_profiles", ["user_id"], name: "index_user_profiles_on_user_id"

  create_table "users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "validations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "versions", force: true do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

end
