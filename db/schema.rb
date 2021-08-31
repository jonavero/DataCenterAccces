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

ActiveRecord::Schema.define(version: 20180613182753) do

  create_table "accesos", force: :cascade do |t|
    t.string "Nombre"
    t.integer "CodigoEmpleado"
    t.string "Correo"
    t.string "Departamento"
    t.string "Funcion"
    t.text "Companero"
    t.text "Mensaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "Empresa"
    t.string "Telefono"
  end

  create_table "solicituds", force: :cascade do |t|
    t.string "Usuario"
    t.string "Departamento"
    t.string "Correo"
    t.string "Funcion"
    t.bigint "CodigoEmpleado_id"
    t.string "Acompanante"
    t.text "Motivo"
    t.text "Nota"
    t.string "Estatus"
    t.date "FechaVisita"
    t.datetime "HoraInicial"
    t.datetime "HoraFinal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["CodigoEmpleado_id"], name: "index_solicituds_on_CodigoEmpleado_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "CodigoEmpleado"
    t.string "NombreCompleto"
    t.string "Departamento"
    t.string "Funcion"
    t.string "Usuario"
    t.string "Contrasena"
    t.string "Correo"
    t.string "Estatus"
    t.string "Tipo"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
