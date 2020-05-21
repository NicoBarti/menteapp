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

ActiveRecord::Schema.define(version: 2020_05_21_003019) do

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
    t.text "texto6"
    t.text "texto7"
    t.text "texto8"
    t.text "texto9"
    t.text "texto10"
    t.string "negritas"
  end

  create_table "acercas", force: :cascade do |t|
    t.string "foto"
    t.string "subtitulofoto"
    t.string "titulofoto"
    t.string "titulopie"
    t.text "texfoto"
    t.text "texto1"
    t.text "texto2"
    t.text "texto3"
    t.text "texto4"
    t.text "texto5"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "autores", force: :cascade do |t|
    t.string "nombre"
    t.string "avatar"
    t.text "descripcionCorta"
    t.text "texto"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "blogs", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "texto1"
    t.text "texto2"
    t.text "titulo"
    t.text "comentario"
    t.string "img"
    t.bigint "autores_id"
    t.text "texto3"
    t.text "texto4"
    t.text "texto5"
    t.text "texto6"
    t.text "texto7"
    t.text "texto8"
    t.text "texto9"
    t.text "texto10"
    t.index ["autores_id"], name: "index_blogs_on_autores_id"
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

  create_table "links", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.decimal "orden"
    t.string "direccion"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "recomendaciones", force: :cascade do |t|
    t.string "titulo"
    t.string "ruta"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "orden"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
