# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_28_134851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "partner_staff", force: :cascade do |t|
    t.integer "partner_id"
    t.string "name"
    t.string "email"
    t.text "about"
    t.boolean "active", default: true
  end

  create_table "partners", force: :cascade do |t|
    t.string "name"
    t.integer "type"
    t.string "country"
    t.string "state"
    t.string "city"
    t.text "about"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "phone", null: false
    t.boolean "immunity", default: false, null: false
    t.text "about", null: false
    t.string "country"
    t.string "state"
    t.string "city"
    t.boolean "active", default: true, null: false
    t.boolean "assigned", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
