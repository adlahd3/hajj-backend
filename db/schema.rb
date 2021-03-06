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

ActiveRecord::Schema.define(version: 20180802100425) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "iban_number"
    t.string "owner_name"
    t.string "owner_id"
    t.string "owner_id_type"
    t.string "nationality"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.float "balance", default: 0.0
    t.index ["user_id"], name: "index_accounts_on_user_id"
  end

  create_table "transactions", force: :cascade do |t|
    t.float "amount", default: 0.0, null: false
    t.bigint "debit_account_id"
    t.bigint "credit_account_id"
    t.boolean "is_paid", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["credit_account_id"], name: "index_transactions_on_credit_account_id"
    t.index ["debit_account_id"], name: "index_transactions_on_debit_account_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.integer "user_type", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "accounts", "users"
end
