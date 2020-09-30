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

ActiveRecord::Schema.define(version: 2020_09_24_192027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "buildings", force: :cascade do |t|
    t.geography "coordinates", limit: {:srid=>4326, :type=>"multi_polygon", :geographic=>true}
    t.string "borough"
    t.string "bin"
    t.string "block"
    t.string "lot"
    t.string "des_addres"
    t.string "circa"
    t.string "date_low"
    t.string "date_high"
    t.string "date_combo"
    t.string "alt_date_1"
    t.string "alt_date_2"
    t.string "arch_build"
    t.string "own_devel"
    t.string "alt_arch_1"
    t.string "alt_arch_2"
    t.string "style_prim"
    t.string "style_sec"
    t.string "style_oth"
    t.string "mat_sec"
    t.string "mat_prim"
    t.string "mat_third"
    t.string "mat_four"
    t.string "mat_other"
    t.string "use_orig"
    t.string "use_other"
    t.string "build_type"
    t.string "build_oth"
    t.string "notes"
    t.string "build_nme"
    t.string "hist_dist"
    t.string "lm_orig"
    t.string "lm_new"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["coordinates"], name: "index_buildings_on_coordinates", using: :gist
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "visit_lists", force: :cascade do |t|
    t.integer "user_id"
    t.integer "building_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
