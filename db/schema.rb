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

ActiveRecord::Schema.define(version: 20141023155015) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "contents", force: true do |t|
    t.string   "name"
    t.string   "system_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contexts", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contexts_tags", force: true do |t|
    t.integer "context_id"
    t.integer "tag_id"
  end

  add_index "contexts_tags", ["context_id"], name: "index_contexts_tags_on_context_id", using: :btree
  add_index "contexts_tags", ["tag_id"], name: "index_contexts_tags_on_tag_id", using: :btree

  create_table "pages", force: true do |t|
    t.string   "name"
    t.string   "file_path"
    t.text     "description"
    t.text     "short_description"
    t.text     "example_html"
    t.text     "example_curly"
    t.integer  "content_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pages", ["content_id"], name: "index_pages_on_content_id", using: :btree

  create_table "pages_tags", force: true do |t|
    t.integer "page_id"
    t.integer "tag_id"
  end

  add_index "pages_tags", ["page_id"], name: "index_pages_tags_on_page_id", using: :btree
  add_index "pages_tags", ["tag_id"], name: "index_pages_tags_on_tag_id", using: :btree

  create_table "parameters", force: true do |t|
    t.string  "name"
    t.string  "default"
    t.text    "description"
    t.text    "short_description"
    t.integer "tag_id"
  end

  create_table "tag_relations", id: false, force: true do |t|
    t.integer "source_tag_id"
    t.integer "target_tag_id"
  end

  add_index "tag_relations", ["source_tag_id", "target_tag_id"], name: "index_tag_relations_on_source_tag_id_and_target_tag_id", using: :btree
  add_index "tag_relations", ["target_tag_id", "source_tag_id"], name: "index_tag_relations_on_target_tag_id_and_source_tag_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "name"
    t.string   "tag_name"
    t.text     "description"
    t.text     "example_curly"
    t.text     "example_html"
    t.text     "additional_info"
    t.string   "synopsis"
    t.string   "version"
    t.integer  "type_of",         default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
