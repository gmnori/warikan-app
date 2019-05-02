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

ActiveRecord::Schema.define(version: 20190428042637) do

  create_table "warikanmodels", force: :cascade do |t|
    t.string   "title"
    t.boolean  "done",               default: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.integer  "amariHeadcount"
    t.integer  "amariAmount"
    t.integer  "totalAmount"
    t.integer  "maleHeadcount1"
    t.integer  "maleHeadcount2"
    t.integer  "maleHeadcount3"
    t.integer  "femaleHeadcount1"
    t.integer  "femaleHeadcount2"
    t.integer  "femaleHeadcount3"
    t.integer  "totalHeadcount"
    t.integer  "subtotalHeadcount1"
    t.integer  "subtotalHeadcount2"
    t.integer  "subtotalHeadcount3"
    t.integer  "subtotalAmount1"
    t.integer  "subtotalAmount2"
    t.integer  "subtotalAmount3"
    t.integer  "maleAmount1"
    t.integer  "maleAmount2"
    t.integer  "maleAmount3"
    t.integer  "femaleAmount1"
    t.integer  "femaleAmount2"
    t.integer  "femaleAmount3"
  end

end
