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

ActiveRecord::Schema.define(version: 20131120211525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chefs", force: true do |t|
    t.string   "name",       null: false
    t.integer  "round_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dishes", force: true do |t|
    t.string   "name",       null: false
    t.string   "round",      null: false
    t.integer  "score1"
    t.integer  "score2"
    t.integer  "score3"
    t.integer  "chef_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "episodes", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rounds", force: true do |t|
    t.string   "name",       null: false
    t.integer  "episode_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "chefs", "rounds", name: "chefs_round_id_fk"

  add_foreign_key "dishes", "chefs", name: "dishes_chef_id_fk"

  add_foreign_key "rounds", "episodes", name: "rounds_episode_id_fk"

end
