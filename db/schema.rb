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

ActiveRecord::Schema.define(version: 20170408210619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crafts", force: :cascade do |t|
    t.integer  "level"
    t.text     "topic"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_crafts_on_lesson_id", using: :btree
  end

  create_table "exercises", force: :cascade do |t|
    t.text     "content"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_exercises_on_lesson_id", using: :btree
  end

  create_table "homeworks", force: :cascade do |t|
    t.text     "content"
    t.integer  "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_homeworks_on_lesson_id", using: :btree
  end

  create_table "lessons", force: :cascade do |t|
    t.text     "name"
    t.text     "group"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prefaces", force: :cascade do |t|
    t.time     "length"
    t.text     "description"
    t.text     "content"
    t.integer  "lesson_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["lesson_id"], name: "index_prefaces_on_lesson_id", using: :btree
  end

  create_table "primaries", force: :cascade do |t|
    t.time     "length"
    t.text     "description"
    t.text     "content"
    t.integer  "lesson_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["lesson_id"], name: "index_primaries_on_lesson_id", using: :btree
  end

  create_table "sections", force: :cascade do |t|
    t.text     "title"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
