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

ActiveRecord::Schema.define(version: 20160115202438) do

  create_table "categorical_taggings", force: :cascade do |t|
    t.integer "taggable_id"
    t.string  "taggable_type"
    t.integer "tag_id"
  end

  add_index "categorical_taggings", ["taggable_type", "taggable_id"], name: "index_categorical_taggings_on_taggable_type_and_taggable_id"

  create_table "categorical_tags", force: :cascade do |t|
    t.string   "label"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "categorical_tags", ["label"], name: "index_categorical_tags_on_label", unique: true
  add_index "categorical_tags", ["slug"], name: "index_categorical_tags_on_slug", unique: true

  create_table "exposition_posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "published",    default: false, null: false
    t.date     "published_at"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "author_id"
    t.string   "slug"
  end

  add_index "exposition_posts", ["slug"], name: "index_exposition_posts_on_slug", unique: true

  create_table "exposition_users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "exposition_users", ["email"], name: "index_exposition_users_on_email", unique: true

end
