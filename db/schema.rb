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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2019_09_23_002625) do
=======
ActiveRecord::Schema.define(version: 2019_09_22_153044) do
>>>>>>> master

  create_table "documentos", force: :cascade do |t|
    t.string "nombre", limit: 50
    t.string "descripcion", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.integer "documento_id"
<<<<<<< HEAD
    t.string "numero_documento", limit: 30, null: false
    t.string "nombre", limit: 50, null: false
    t.string "apellido_paterno", limit: 50, null: false
    t.string "apellido_materno", limit: 50, null: false
    t.integer "privilegio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estudiantes", force: :cascade do |t|
    t.integer "tutor_id"
    t.string "nombre", limit: 50
=======
    t.integer "privilegio_id"
    t.string "numero_documento", limit: 30
    t.string "nombre", limit: 50
    t.string "apellido_paterno", limit: 50
    t.string "apellido_materno", limit: 50
    t.integer "estado"
>>>>>>> master
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "privilegios", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.string "descripcion", limit: 100, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rols", force: :cascade do |t|
    t.string "codigo", limit: 5
    t.string "nombre", limit: 100
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tareas", force: :cascade do |t|
    t.string "codigo_tarea"
    t.string "nombre"
    t.string "descripcion"
    t.string "estado"
    t.string "rubro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_usuarios_on_email", unique: true
  end

end
