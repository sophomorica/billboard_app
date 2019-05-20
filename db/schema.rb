ActiveRecord::Schema.define(version: 2019_05_19_232311) do
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "genre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "billboards", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "on_billboard"
    t.bigint "billboard_id"
    t.string "genre"
    t.index ["artist_id"], name: "index_songs_on_artist_id"
    t.index ["billboard_id"], name: "index_songs_on_billboard_id"
  end

  add_foreign_key "songs", "artists"
  add_foreign_key "songs", "billboards"
end
