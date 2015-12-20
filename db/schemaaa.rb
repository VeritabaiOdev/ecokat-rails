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

ActiveRecord::Schema.define(version: 20151219184143) do

  create_table "addresses", force: :cascade do |t|
    t.string   "firstname",  null: false
    t.string   "lastname",   null: false
    t.string   "address1",   null: false
    t.string   "address2"
    t.string   "city",       null: false
    t.string   "state_id",   null: false
    t.integer  "country_id", null: false
    t.string   "zip",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "authors", ["slug"], name: "index_authors_on_slug", unique: true

  create_table "authors_books", id: false, force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "book_id",   null: false
  end

  add_index "authors_books", ["author_id", "book_id"], name: "index_authors_books_on_author_id_and_book_id"
  add_index "authors_books", ["book_id", "author_id"], name: "index_authors_books_on_book_id_and_author_id"

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
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "slug"
  end

  add_index "books", ["author_id"], name: "index_books_on_author_id"
  add_index "books", ["category_id"], name: "index_books_on_category_id"
  add_index "books", ["slug"], name: "index_books_on_slug", unique: true

  create_table "cart_items", force: :cascade do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.integer  "quantity"
    t.integer  "item_id"
    t.string   "item_type"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "slug"
  end

  add_index "categories", ["slug"], name: "index_categories_on_slug", unique: true

  create_table "comments", force: :cascade do |t|
    t.string   "title",            limit: 50, default: ""
    t.text     "comment"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.integer  "user_id"
    t.string   "role",                        default: "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["commentable_id"], name: "index_comments_on_commentable_id"
  add_index "comments", ["commentable_type"], name: "index_comments_on_commentable_type"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.string "abbr"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favorites", ["book_id"], name: "index_favorites_on_book_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

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

  create_table "line_items", force: :cascade do |t|
    t.integer  "order_id",   null: false
    t.integer  "quantity",   null: false
    t.integer  "variant_id", null: false
    t.decimal  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "billing_address_id",  null: false
    t.integer  "shipping_address_id", null: false
    t.integer  "user_id"
    t.string   "email",               null: false
    t.string   "phone",               null: false
    t.decimal  "total",               null: false
    t.decimal  "total_due",           null: false
    t.decimal  "tax_charge",          null: false
    t.string   "status",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_method_values", force: :cascade do |t|
    t.integer "payment_method_id"
    t.string  "key"
    t.string  "value"
  end

  create_table "payment_methods", force: :cascade do |t|
    t.string   "description",                 null: false
    t.string   "klass",                       null: false
    t.boolean  "active",      default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "payment_method_id"
    t.string   "status",             default: "paid", null: false
    t.decimal  "total",              default: 0.0,    null: false
    t.string   "number"
    t.integer  "month"
    t.integer  "year"
    t.string   "verification_value"
    t.string   "transaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "shipments", force: :cascade do |t|
    t.integer  "order_id",                           null: false
    t.integer  "shipping_method_id",                 null: false
    t.string   "status",             default: "new", null: false
    t.decimal  "total",              default: 0.0,   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shipping_method_values", force: :cascade do |t|
    t.integer "shipping_method_id"
    t.string  "key"
    t.string  "value"
  end

  create_table "shipping_methods", force: :cascade do |t|
    t.string  "description",                 null: false
    t.string  "klass",                       null: false
    t.boolean "active",      default: false, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string  "name"
    t.string  "abbr"
    t.integer "country_id"
  end

  create_table "tax_method_values", force: :cascade do |t|
    t.integer "tax_method_id"
    t.string  "key"
    t.string  "value"
  end

  create_table "tax_methods", force: :cascade do |t|
    t.string  "description",                 null: false
    t.string  "klass",                       null: false
    t.boolean "active",      default: false, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "telephone"
    t.string   "country"
    t.string   "mail"
    t.string   "birth_date"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.boolean  "is_admin",               default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "variants", force: :cascade do |t|
    t.string  "sku",                                 null: false
    t.string  "description",                         null: false
    t.decimal "price",                               null: false
    t.integer "quantity",            default: 0,     null: false
    t.integer "item_id",                             null: false
    t.string  "item_type",                           null: false
    t.boolean "active",              default: false, null: false
    t.boolean "unlimited_inventory", default: false, null: false
  end

end
