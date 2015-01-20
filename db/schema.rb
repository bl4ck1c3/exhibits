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

ActiveRecord::Schema.define(version: 20150120201327) do

  create_table "bookmarks", force: :cascade do |t|
    t.integer  "user_id",                   null: false
    t.string   "user_type",     limit: 255
    t.string   "document_id",   limit: 255
    t.string   "title",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "document_type", limit: 255
  end

  add_index "bookmarks", ["user_id"], name: "index_bookmarks_on_user_id"

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",           limit: 255, null: false
    t.integer  "sluggable_id",               null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope",          limit: 255
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "searches", force: :cascade do |t|
    t.text     "query_params"
    t.integer  "user_id"
    t.string   "user_type",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "searches", ["user_id"], name: "index_searches_on_user_id"

  create_table "spotlight_attachments", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "file",       limit: 255
    t.string   "uid",        limit: 255
    t.integer  "exhibit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spotlight_blacklight_configurations", force: :cascade do |t|
    t.integer  "exhibit_id"
    t.text     "facet_fields"
    t.text     "index_fields"
    t.text     "search_fields"
    t.text     "sort_fields"
    t.text     "default_solr_params"
    t.text     "show"
    t.text     "index"
    t.integer  "default_per_page"
    t.text     "per_page"
    t.text     "document_index_view_types"
    t.string   "thumbnail_size",            limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spotlight_contact_emails", force: :cascade do |t|
    t.integer  "exhibit_id"
    t.string   "email",                limit: 255, default: "", null: false
    t.string   "confirmation_token",   limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spotlight_contact_emails", ["confirmation_token"], name: "index_spotlight_contact_emails_on_confirmation_token", unique: true
  add_index "spotlight_contact_emails", ["email", "exhibit_id"], name: "index_spotlight_contact_emails_on_email_and_exhibit_id", unique: true

  create_table "spotlight_contacts", force: :cascade do |t|
    t.string   "slug",            limit: 255
    t.string   "name",            limit: 255
    t.boolean  "show_in_sidebar"
    t.integer  "weight",                      default: 50
    t.integer  "exhibit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "contact_info"
    t.string   "avatar",          limit: 255
    t.integer  "avatar_crop_x"
    t.integer  "avatar_crop_y"
    t.integer  "avatar_crop_w"
    t.integer  "avatar_crop_h"
  end

  add_index "spotlight_contacts", ["exhibit_id"], name: "index_spotlight_contacts_on_exhibit_id"

  create_table "spotlight_custom_fields", force: :cascade do |t|
    t.integer  "exhibit_id"
    t.string   "slug",          limit: 255
    t.string   "field",         limit: 255
    t.text     "configuration"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spotlight_exhibits", force: :cascade do |t|
    t.boolean  "default"
    t.string   "title",        limit: 255,                null: false
    t.string   "subtitle",     limit: 255
    t.string   "slug",         limit: 255
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "searchable",               default: true
    t.string   "layout",       limit: 255
    t.boolean  "published",                default: true
    t.datetime "published_at"
  end

  add_index "spotlight_exhibits", ["default"], name: "index_spotlight_exhibits_on_default", unique: true
  add_index "spotlight_exhibits", ["slug"], name: "index_spotlight_exhibits_on_slug", unique: true

  create_table "spotlight_locks", force: :cascade do |t|
    t.integer  "on_id"
    t.string   "on_type",    limit: 255
    t.integer  "by_id"
    t.string   "by_type",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spotlight_locks", ["on_id", "on_type"], name: "index_spotlight_locks_on_on_id_and_on_type", unique: true

  create_table "spotlight_main_navigations", force: :cascade do |t|
    t.string   "label",      limit: 255
    t.integer  "weight",                 default: 20
    t.string   "nav_type",   limit: 255
    t.integer  "exhibit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spotlight_main_navigations", ["exhibit_id"], name: "index_spotlight_main_navigations_on_exhibit_id"

  create_table "spotlight_pages", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.string   "type",              limit: 255
    t.string   "slug",              limit: 255
    t.string   "scope",             limit: 255
    t.text     "content"
    t.integer  "weight",                        default: 50
    t.boolean  "published"
    t.integer  "exhibit_id"
    t.integer  "created_by_id"
    t.integer  "last_edited_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_page_id"
    t.boolean  "display_sidebar"
    t.boolean  "display_title"
  end

  add_index "spotlight_pages", ["exhibit_id"], name: "index_spotlight_pages_on_exhibit_id"
  add_index "spotlight_pages", ["parent_page_id"], name: "index_spotlight_pages_on_parent_page_id"
  add_index "spotlight_pages", ["slug", "scope"], name: "index_spotlight_pages_on_slug_and_scope", unique: true

  create_table "spotlight_resources", force: :cascade do |t|
    t.integer  "exhibit_id"
    t.string   "type",       limit: 255
    t.string   "url",        limit: 255
    t.text     "data"
    t.datetime "indexed_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spotlight_roles", force: :cascade do |t|
    t.integer "exhibit_id"
    t.integer "user_id"
    t.string  "role",       limit: 255
  end

  add_index "spotlight_roles", ["exhibit_id", "user_id"], name: "index_spotlight_roles_on_exhibit_id_and_user_id", unique: true

  create_table "spotlight_searches", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.string   "slug",              limit: 255
    t.string   "scope",             limit: 255
    t.text     "short_description"
    t.text     "long_description"
    t.text     "query_params"
    t.integer  "weight"
    t.boolean  "on_landing_page"
    t.integer  "exhibit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "featured_item_id",  limit: 255
  end

  add_index "spotlight_searches", ["exhibit_id"], name: "index_spotlight_searches_on_exhibit_id"
  add_index "spotlight_searches", ["slug", "scope"], name: "index_spotlight_searches_on_slug_and_scope", unique: true

  create_table "spotlight_solr_document_sidecars", force: :cascade do |t|
    t.integer  "exhibit_id"
    t.string   "solr_document_id", limit: 255
    t.boolean  "public",                       default: true
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "spotlight_solr_document_sidecars", ["exhibit_id"], name: "index_spotlight_solr_document_sidecars_on_exhibit_id"

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.string   "taggable_id",   limit: 255
    t.string   "taggable_type", limit: 255
    t.integer  "tagger_id"
    t.string   "tagger_type",   limit: 255
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true

  create_table "tags", force: :cascade do |t|
    t.string "name", limit: 255
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "guest",                              default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
