ActiveRecord::Schema.define(version: 2024_05_04_080741) do

  create_table "lists", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
