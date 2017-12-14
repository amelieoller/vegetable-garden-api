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

ActiveRecord::Schema.define(version: 20171214021506) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crops", force: :cascade do |t|
    t.string "name"
    t.integer "days_to_maturity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plantings", force: :cascade do |t|
    t.datetime "date_planted"
    t.boolean "active"
    t.bigint "crop_id"
    t.bigint "varietal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crop_id"], name: "index_plantings_on_crop_id"
    t.index ["varietal_id"], name: "index_plantings_on_varietal_id"
  end

  create_table "varietals", force: :cascade do |t|
    t.string "name"
    t.integer "days_to_maturity"
    t.bigint "crop_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["crop_id"], name: "index_varietals_on_crop_id"
  end

  add_foreign_key "plantings", "crops"
  add_foreign_key "plantings", "varietals"
  add_foreign_key "varietals", "crops"
end
