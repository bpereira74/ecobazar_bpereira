# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_10_14_160351) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "eco_products", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "name"
    t.text "description"
    t.bigint "condition_id", null: false
    t.integer "precio"
    t.boolean "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition_id"], name: "index_eco_products_on_condition_id"
    t.index ["user_id"], name: "index_eco_products_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "condition_id", null: false
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition_id"], name: "index_products_on_condition_id"
  end

  create_table "seller_conditions", force: :cascade do |t|
    t.bigint "seller_id", null: false
    t.bigint "condition_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition_id"], name: "index_seller_conditions_on_condition_id"
    t.index ["seller_id"], name: "index_seller_conditions_on_seller_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "product_id", null: false
    t.bigint "condition_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["condition_id"], name: "index_sellers_on_condition_id"
    t.index ["product_id"], name: "index_sellers_on_product_id"
    t.index ["user_id"], name: "index_sellers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.bigint "phone"
    t.integer "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "eco_products", "conditions"
  add_foreign_key "eco_products", "users"
  add_foreign_key "products", "conditions"
  add_foreign_key "seller_conditions", "conditions"
  add_foreign_key "seller_conditions", "sellers"
  add_foreign_key "sellers", "conditions"
  add_foreign_key "sellers", "products"
  add_foreign_key "sellers", "users"
end
