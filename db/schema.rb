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

ActiveRecord::Schema.define(version: 2021_09_08_151812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consoles", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.string "img_url"
    t.integer "storage_capacity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gameplays", force: :cascade do |t|
    t.integer "game_time"
    t.integer "likes"
    t.string "video_url"
    t.bigint "game_id", null: false
    t.bigint "player_id", null: false
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_gameplays_on_game_id"
    t.index ["player_id"], name: "index_gameplays_on_player_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "cost"
    t.integer "rate"
    t.float "average_length"
    t.string "img_url"
    t.float "storage_space"
    t.bigint "console_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["console_id"], name: "index_games_on_console_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "years_of_experience"
    t.string "photo_url"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "gameplays", "games"
  add_foreign_key "gameplays", "players"
  add_foreign_key "games", "consoles"
end
