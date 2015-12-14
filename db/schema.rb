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

ActiveRecord::Schema.define(version: 20151213190614) do

  create_table "Authors_Books", id: false, force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id",   null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.integer  "author_id"
    t.integer  "page_num"
    t.text     "content"
    t.string   "published_date"
    t.integer  "category_id"
    t.string   "publisher"
    t.string   "language"
    t.integer  "counter"
    t.integer  "stock"
    t.float    "cost"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "books", ["author_id"], name: "index_books_on_author_id"
  add_index "books", ["category_id"], name: "index_books_on_category_id"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favorites", ["book_id"], name: "index_favorites_on_book_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "ratings", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "count"
    t.integer  "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ratings", ["book_id"], name: "index_ratings_on_book_id"

  create_table "sales", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.string   "name"
    t.integer  "number"
    t.float    "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sales", ["book_id"], name: "index_sales_on_book_id"
  add_index "sales", ["user_id"], name: "index_sales_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "telephone"
    t.string   "country"
    t.string   "mail"
    t.string   "birth_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
