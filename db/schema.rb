# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_29_020043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img"
    t.string "tema"
    t.text "titulo"
    t.text "subtitulo"
    t.text "texto"
    t.text "carrusel"
    t.text "subtitSubrr"
    t.text "subtitCont"
    t.text "comentarios"
    t.text "texto2"
    t.text "texto3"
    t.text "subcarrusel"
    t.decimal "orden"
    t.text "texto4"
    t.text "texto5"
  end

  create_table "blogs", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "texto1"
    t.text "texto2"
    t.text "titulo"
    t.text "comentario"
    t.string "img"
  end

  create_table "items", force: :cascade do |t|
    t.decimal "itemid"
    t.decimal "alt"
    t.decimal "tiempo"
    t.decimal "secuencia"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "lists", force: :cascade do |t|
    t.string "nombre"
    t.decimal "indx"
    t.decimal "cant"
    t.decimal "eq"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_lists_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "sexo"
    t.datetime "fnac"
    t.string "userid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "items", "users"
  add_foreign_key "lists", "users"
end
