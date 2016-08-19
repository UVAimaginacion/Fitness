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

ActiveRecord::Schema.define(version: 20160811001222) do

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

end
