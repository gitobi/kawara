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

ActiveRecord::Schema.define(version: 20160412060240) do

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"

  create_table "kawara_article_images", force: :cascade do |t|
    t.integer  "site_id",           null: false
    t.integer  "article_id",        null: false
    t.string   "file_id",           null: false
    t.string   "file_filename"
    t.integer  "file_size"
    t.string   "file_content_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "kawara_article_images", ["file_id"], name: "index_kawara_article_images_on_file_id"
  add_index "kawara_article_images", ["site_id", "article_id"], name: "index_kawara_article_images_on_site_id_and_article_id"

  create_table "kawara_articles", force: :cascade do |t|
    t.integer  "site_id",                 null: false
    t.integer  "category_id"
    t.string   "slug"
    t.string   "title"
    t.string   "subtitle"
    t.text     "content"
    t.integer  "status",      default: 0, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "kawara_articles", ["site_id", "category_id", "status"], name: "index_kawara_articles_on_site_id_and_category_id_and_status"
  add_index "kawara_articles", ["site_id", "slug"], name: "index_kawara_articles_on_site_id_and_slug", unique: true
  add_index "kawara_articles", ["site_id", "status", "id"], name: "index_kawara_articles_on_site_id_and_status_and_id"
  add_index "kawara_articles", ["site_id", "status", "slug"], name: "index_kawara_articles_on_site_id_and_status_and_slug"

  create_table "kawara_articles_meta_tags", force: :cascade do |t|
    t.integer  "article_id",  null: false
    t.integer  "meta_tag_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "kawara_articles_meta_tags", ["article_id", "meta_tag_id"], name: "index_kawara_articles_meta_tags_on_article_id_and_meta_tag_id"
  add_index "kawara_articles_meta_tags", ["meta_tag_id", "article_id"], name: "index_kawara_articles_meta_tags_on_meta_tag_id_and_article_id"

  create_table "kawara_articles_tags", force: :cascade do |t|
    t.integer  "article_id", null: false
    t.integer  "tag_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "kawara_articles_tags", ["article_id", "tag_id"], name: "index_kawara_articles_tags_on_article_id_and_tag_id"
  add_index "kawara_articles_tags", ["tag_id", "article_id"], name: "index_kawara_articles_tags_on_tag_id_and_article_id"

  create_table "kawara_categories", force: :cascade do |t|
    t.integer  "site_id",                    null: false
    t.string   "slug"
    t.string   "name",                       null: false
    t.integer  "parent_id"
    t.integer  "lft",                        null: false
    t.integer  "rgt",                        null: false
    t.integer  "depth",          default: 0, null: false
    t.integer  "children_count", default: 0, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "kawara_categories", ["site_id", "lft"], name: "index_kawara_categories_on_site_id_and_lft"
  add_index "kawara_categories", ["site_id", "parent_id"], name: "index_kawara_categories_on_site_id_and_parent_id"
  add_index "kawara_categories", ["site_id", "rgt"], name: "index_kawara_categories_on_site_id_and_rgt"
  add_index "kawara_categories", ["site_id", "slug"], name: "index_kawara_categories_on_site_id_and_slug", unique: true

  create_table "kawara_meta_tags", force: :cascade do |t|
    t.integer  "site_id",        null: false
    t.string   "name",           null: false
    t.integer  "articles_count"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "kawara_meta_tags", ["site_id", "name"], name: "index_kawara_meta_tags_on_site_id_and_name", unique: true

  create_table "kawara_roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kawara_sites", force: :cascade do |t|
    t.string   "name",                    null: false
    t.string   "title"
    t.string   "description"
    t.integer  "status",      default: 0, null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "kawara_sites", ["name"], name: "index_kawara_sites_on_name", unique: true
  add_index "kawara_sites", ["status"], name: "index_kawara_sites_on_status"

  create_table "kawara_tags", force: :cascade do |t|
    t.integer  "site_id",        null: false
    t.string   "slug"
    t.string   "name",           null: false
    t.integer  "articles_count"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "kawara_tags", ["site_id", "name"], name: "index_kawara_tags_on_site_id_and_name", unique: true
  add_index "kawara_tags", ["site_id", "slug"], name: "index_kawara_tags_on_site_id_and_slug", unique: true

  create_table "kawara_users", force: :cascade do |t|
    t.integer  "role_id",                             null: false
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "kawara_users", ["confirmation_token"], name: "index_kawara_users_on_confirmation_token", unique: true
  add_index "kawara_users", ["email"], name: "index_kawara_users_on_email", unique: true
  add_index "kawara_users", ["reset_password_token"], name: "index_kawara_users_on_reset_password_token", unique: true
  add_index "kawara_users", ["role_id"], name: "index_kawara_users_on_role_id"
  add_index "kawara_users", ["unlock_token"], name: "index_kawara_users_on_unlock_token", unique: true

end
