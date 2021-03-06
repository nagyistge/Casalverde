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

ActiveRecord::Schema.define(version: 20161027075754) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.decimal  "price"
    t.decimal  "total_price"
    t.integer  "total_days"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "content_blocks", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "image_url"
    t.string   "page"
    t.integer  "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.string   "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
