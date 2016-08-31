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

ActiveRecord::Schema.define(version: 20160827232007) do

  create_table "comments", force: :cascade do |t|
    t.string   "nombre"
    t.text     "comentario"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "publicacione_id"
    t.index ["publicacione_id"], name: "index_comments_on_publicacione_id"
  end

  create_table "events", force: :cascade do |t|
    t.string   "responsable"
    t.string   "nombreEven"
    t.string   "lugar"
    t.datetime "fechaHora"
    t.text     "descripcion"
    t.text     "telefono"
    t.text     "email"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "departamento"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "publicaciones", force: :cascade do |t|
    t.string   "nombre"
    t.text     "texto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "tags"
  end

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.text     "ingredient"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "rutinas", force: :cascade do |t|
    t.string   "imagen"
    t.string   "musculo"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "nombre"
  end

  create_table "tips", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "rol"
    t.string   "name"
    t.string   "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
