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

ActiveRecord::Schema.define(version: 20160720034648) do

  create_table "addresses", force: :cascade do |t|
    t.string   "street"
    t.integer  "number"
    t.string   "neighborhood"
    t.integer  "state"
    t.integer  "nation"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "addresses", ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id"

  create_table "associates", force: :cascade do |t|
    t.integer  "associate_number"
    t.date     "association_date"
    t.integer  "payment"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "associates", ["associate_number"], name: "index_associates_on_associate_number", unique: true

  create_table "customers", force: :cascade do |t|
    t.integer  "customer_code"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "customers", ["customer_code"], name: "index_customers_on_customer_code", unique: true

  create_table "dependents", force: :cascade do |t|
    t.integer  "associate_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "dependents", ["associate_id"], name: "index_dependents_on_associate_id"

  create_table "payments", force: :cascade do |t|
    t.string   "title"
    t.decimal  "value"
    t.text     "description"
    t.integer  "code"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "payments", ["code"], name: "index_payments_on_code", unique: true

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "rg"
    t.date     "birthdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "people", ["cpf"], name: "index_people_on_cpf", unique: true
  add_index "people", ["rg"], name: "index_people_on_rg", unique: true

  create_table "phones", force: :cascade do |t|
    t.string   "phone1"
    t.string   "phone2"
    t.integer  "phoneable_id"
    t.string   "phoneable_type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "phones", ["phoneable_id", "phoneable_type"], name: "index_phones_on_phoneable_id_and_phoneable_type"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
