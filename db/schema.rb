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

ActiveRecord::Schema.define(version: 20180412084700) do

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.integer "company_aggrupation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_aggrupation_id"], name: "index_companies_on_company_aggrupation_id"
  end

  create_table "company_aggrupations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.integer "company_id"
    t.integer "parent_group_id"
    t.string "name", null: false
    t.index ["company_id"], name: "index_groups_on_company_id"
    t.index ["parent_group_id"], name: "index_groups_on_parent_group_id"
  end

  create_table "spaces", force: :cascade do |t|
    t.string "name", null: false
    t.string "internal_code"
    t.integer "group_id"
    t.index ["group_id"], name: "index_spaces_on_group_id"
  end

  create_table "user_vinculations", force: :cascade do |t|
    t.string "vinculable_type"
    t.integer "vinculable_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_vinculations_on_user_id", unique: true
    t.index ["vinculable_type", "vinculable_id"], name: "index_user_vinculations_on_vinculable_type_and_vinculable_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
