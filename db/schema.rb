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

ActiveRecord::Schema.define(version: 20160630034457) do

  create_table "celestial_objects", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name"
    t.text     "description"
  end

  create_table "finds", force: :cascade do |t|
    t.integer  "celestial_object_id"
    t.integer  "observation_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "finds", ["celestial_object_id"], name: "index_finds_on_celestial_object_id"
  add_index "finds", ["observation_id"], name: "index_finds_on_observation_id"

  create_table "hunts", force: :cascade do |t|
    t.integer  "celestial_object_id"
    t.integer  "observation_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "hunts", ["celestial_object_id"], name: "index_hunts_on_celestial_object_id"
  add_index "hunts", ["observation_id"], name: "index_hunts_on_observation_id"

  create_table "journals", force: :cascade do |t|
    t.integer  "observer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "journals", ["observer_id"], name: "index_journals_on_observer_id"

  create_table "observations", force: :cascade do |t|
    t.integer  "journal_id"
    t.string   "title"
    t.datetime "beginning"
    t.integer  "duration"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "observations", ["journal_id"], name: "index_observations_on_journal_id"

  create_table "observers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "observation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "sites", ["observation_id"], name: "index_sites_on_observation_id"

  create_table "tools", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
