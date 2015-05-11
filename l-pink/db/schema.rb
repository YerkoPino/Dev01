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

ActiveRecord::Schema.define(version: 20150419201223) do

  create_table "acta_reunions", force: :cascade do |t|
    t.date    "fecha"
    t.integer "correlativo", limit: 4
    t.integer "proyecto_id", limit: 4
  end

  add_index "acta_reunions", ["proyecto_id"], name: "index_acta_reunions_on_proyecto_id", using: :btree

  create_table "comentarios", force: :cascade do |t|
    t.string  "descripcion", limit: 300
    t.integer "tarea_id",    limit: 4
  end

  add_index "comentarios", ["tarea_id"], name: "index_comentarios_on_tarea_id", using: :btree

  create_table "elementos", force: :cascade do |t|
    t.string  "nombre",           limit: 30
    t.string  "descripcion",      limit: 300
    t.string  "estado",           limit: 30
    t.string  "tipo",             limit: 30
    t.date    "fecha_compromiso"
    t.string  "contexto",         limit: 300
    t.integer "tema_id",          limit: 4
    t.integer "elemento_id",      limit: 4
  end

  add_index "elementos", ["elemento_id"], name: "index_elementos_on_elemento_id", using: :btree
  add_index "elementos", ["tema_id"], name: "index_elementos_on_tema_id", using: :btree

  create_table "estado_tareas", force: :cascade do |t|
    t.string "nombre",      limit: 25
    t.string "descripcion", limit: 300
  end

  create_table "proyectos", force: :cascade do |t|
    t.string "nombre",       limit: 30
    t.string "descripcion",  limit: 300
    t.date   "fecha_inicio"
    t.date   "fecha_fin"
  end

  create_table "tareas", force: :cascade do |t|
    t.string  "nombre",          limit: 30
    t.string  "descripcion",     limit: 300
    t.integer "estado_tarea_id", limit: 4
    t.integer "elemento_id",     limit: 4
  end

  add_index "tareas", ["elemento_id"], name: "index_tareas_on_elemento_id", using: :btree
  add_index "tareas", ["estado_tarea_id"], name: "index_tareas_on_estado_tarea_id", using: :btree

  create_table "temas", force: :cascade do |t|
    t.string  "nombre",          limit: 30
    t.string  "descripcion",     limit: 300
    t.string  "estado",          limit: 30
    t.integer "acta_reunion_id", limit: 4
  end

  add_index "temas", ["acta_reunion_id"], name: "index_temas_on_acta_reunion_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string "nombre",        limit: 255
    t.string "apellido",      limit: 255
    t.string "email",         limit: 255
    t.string "tipo",          limit: 255
    t.string "password_hash", limit: 255
    t.string "password_salt", limit: 255
    t.string "avatar_url",    limit: 255
  end

  create_table "usuario_acta_reunions", force: :cascade do |t|
    t.integer "acta_reunion_id", limit: 4
    t.integer "user_id",         limit: 4
    t.boolean "secretario",      limit: 1
  end

  add_index "usuario_acta_reunions", ["acta_reunion_id"], name: "index_usuario_acta_reunions_on_acta_reunion_id", using: :btree
  add_index "usuario_acta_reunions", ["user_id"], name: "index_usuario_acta_reunions_on_user_id", using: :btree

  create_table "usuario_elementos", force: :cascade do |t|
    t.boolean "responsable", limit: 1
    t.integer "elemento_id", limit: 4
    t.integer "user_id",     limit: 4
  end

  add_index "usuario_elementos", ["elemento_id"], name: "index_usuario_elementos_on_elemento_id", using: :btree
  add_index "usuario_elementos", ["user_id"], name: "index_usuario_elementos_on_user_id", using: :btree

  create_table "usuario_proyectos", force: :cascade do |t|
    t.integer "proyecto_id", limit: 4
    t.integer "user_id",     limit: 4
  end

  add_index "usuario_proyectos", ["proyecto_id"], name: "index_usuario_proyectos_on_proyecto_id", using: :btree
  add_index "usuario_proyectos", ["user_id"], name: "index_usuario_proyectos_on_user_id", using: :btree

  create_table "usuario_tareas", force: :cascade do |t|
    t.boolean "responsable", limit: 1
    t.integer "tarea_id",    limit: 4
    t.integer "user_id",     limit: 4
  end

  add_index "usuario_tareas", ["tarea_id"], name: "index_usuario_tareas_on_tarea_id", using: :btree
  add_index "usuario_tareas", ["user_id"], name: "index_usuario_tareas_on_user_id", using: :btree

  add_foreign_key "acta_reunions", "proyectos"
  add_foreign_key "comentarios", "tareas"
  add_foreign_key "elementos", "elementos"
  add_foreign_key "elementos", "temas"
  add_foreign_key "tareas", "elementos"
  add_foreign_key "tareas", "estado_tareas"
  add_foreign_key "temas", "acta_reunions"
  add_foreign_key "usuario_acta_reunions", "acta_reunions"
  add_foreign_key "usuario_acta_reunions", "users"
  add_foreign_key "usuario_elementos", "elementos"
  add_foreign_key "usuario_elementos", "users"
  add_foreign_key "usuario_proyectos", "proyectos"
  add_foreign_key "usuario_proyectos", "users"
  add_foreign_key "usuario_tareas", "tareas"
  add_foreign_key "usuario_tareas", "users"
end
