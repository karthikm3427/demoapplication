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

ActiveRecord::Schema.define(version: 20180512160311) do

  create_table "authors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "name"
    t.string   "rating"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "author_id"
  end

  create_table "creators", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.date     "birthdate"
    t.string   "introduction"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers_products", id: false, force: true do |t|
    t.integer "customer_id", null: false
    t.integer "product_id",  null: false
  end

  create_table "products", force: true do |t|
    t.integer "part_number"
    t.integer "user_id"
    t.decimal "price",         precision: 5, scale: 2
    t.integer "supplier_id"
    t.string  "supplier_type"
    t.string  "full_name"
  end

  add_index "products", ["supplier_id", "supplier_type"], name: "index_products_on_supplier_id_and_supplier_type", using: :btree
  add_index "products", ["user_id"], name: "index_products_on_user_id", using: :btree

  create_table "sites", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "tasks", force: true do |t|
    t.string "description"
    t.string "deadline"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
