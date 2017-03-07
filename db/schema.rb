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

ActiveRecord::Schema.define(version: 20170306215221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.date     "date"
    t.string   "location"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organization_id"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "capacity"
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "location"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "timeslots", force: :cascade do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_timeslots", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "timeslot_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password_digest"
    t.string   "region"
    t.integer  "volunteer_position"
    t.date     "date_of_birth"
    t.string   "summary"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.boolean  "organization"
    t.integer  "hours"
  end

end
