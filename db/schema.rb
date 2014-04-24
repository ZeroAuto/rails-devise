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

ActiveRecord::Schema.define(version: 20140416185852) do

  create_table "members", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "state"
    t.date     "joined_date"
    t.date     "left_date"
    t.string   "instruments"
    t.string   "email"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                                 default: "", null: false
    t.string   "encrypted_password",                    default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "band_name"
    t.date     "date_founded"
    t.integer  "tax_num"
    t.string   "business_type"
    t.string   "non_profit_status"
    t.string   "location_city"
    t.string   "location_state"
    t.string   "location_country"
    t.string   "primary_first_name"
    t.string   "primary_last_name"
    t.string   "primary_email"
    t.string   "primary_primary_address_one"
    t.string   "primary_primary_address_two"
    t.string   "primary_city"
    t.string   "primary_state"
    t.string   "primary_zip"
    t.string   "primary_phone"
    t.boolean  "total_income_more_than_fifty_thousand"
    t.integer  "adjusted_gross_income"
    t.boolean  "label_contract"
    t.boolean  "manager_contract"
    t.boolean  "booking_agent_contract"
    t.boolean  "attorney_contract"
    t.boolean  "BMI"
    t.boolean  "ASCAP"
    t.boolean  "SESAC"
    t.boolean  "SoundExchange"
    t.boolean  "other"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
