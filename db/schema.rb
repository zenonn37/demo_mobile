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

ActiveRecord::Schema.define(version: 20131128152545) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "city"
    t.string   "street"
    t.string   "email"
    t.integer  "phone"
    t.integer  "c_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_data", force: true do |t|
    t.integer  "employee_id"
    t.decimal  "rate",           precision: 4, scale: 2
    t.integer  "hours"
    t.integer  "days"
    t.integer  "jobs"
    t.string   "performance"
    t.integer  "fed_withhold"
    t.integer  "state_withhold"
    t.decimal  "expense",        precision: 4, scale: 2
    t.decimal  "payroll",        precision: 4, scale: 2
    t.decimal  "federal",        precision: 4, scale: 2
    t.decimal  "state",          precision: 4, scale: 2
    t.decimal  "ss",             precision: 4, scale: 2
    t.decimal  "medic",          precision: 4, scale: 2
    t.decimal  "medicare",       precision: 4, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employee_data", ["employee_id"], name: "index_employee_data_on_employee_id", using: :btree

  create_table "employees", force: true do |t|
    t.string   "first"
    t.string   "last"
    t.string   "middle"
    t.date     "birth"
    t.string   "city"
    t.string   "state"
    t.string   "street"
    t.string   "email"
    t.integer  "phone"
    t.integer  "employeeid"
    t.date     "hire"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
