ActiveRecord::Schema.define(version: 20180213024738) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contributions", force: :cascade do |t|
    t.string "title"
    t.text "overview"
    t.text "category"
    t.date "modified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "file"
    t.integer "user_id"
    t.string "user_name"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "contribution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
