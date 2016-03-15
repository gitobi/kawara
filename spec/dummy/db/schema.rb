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

ActiveRecord::Schema.define(version: 20160315075948) do

  create_table "kawara_article_images", force: :cascade do |t|
    t.integer  "article_id",        null: false
    t.string   "file_id",           null: false
    t.string   "file_filename"
    t.integer  "file_size"
    t.string   "file_content_type"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "kawara_article_images", ["article_id"], name: "index_kawara_article_images_on_article_id"

  create_table "kawara_articles", force: :cascade do |t|
    t.string   "title"
    t.string   "subtitle"
    t.text     "content"
    t.integer  "status",     default: 0, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "kawara_articles", ["status", "id"], name: "index_kawara_articles_on_status_and_id"

  create_table "kawara_articles_tags", force: :cascade do |t|
    t.integer  "article_id", null: false
    t.integer  "tag_id",     null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "kawara_articles_tags", ["article_id", "tag_id"], name: "index_kawara_articles_tags_on_article_id_and_tag_id"
  add_index "kawara_articles_tags", ["tag_id", "article_id"], name: "index_kawara_articles_tags_on_tag_id_and_article_id"

  create_table "kawara_tags", force: :cascade do |t|
    t.string   "name",           null: false
    t.integer  "articles_count"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
