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

ActiveRecord::Schema.define(version: 20140605235415) do

  create_table "departamentos", force: true do |t|
    t.string   "descr"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "departamento_id"
  end

  create_table "finalidades", force: true do |t|
    t.string   "descr"
    t.float    "vlrgate"
    t.float    "vlrcomissmark"
    t.float    "vlrmarketing"
    t.float    "vlrembalagem"
    t.float    "vlrencargos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formaenvios", force: true do |t|
    t.string   "descr",      limit: 45
    t.integer  "prazo_dias"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formapagtos", force: true do |t|
    t.string   "descr",      limit: 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "participantes", force: true do |t|
    t.string   "tipo",           limit: 1
    t.string   "nome",           limit: 60
    t.decimal  "cnpj",                       precision: 10, scale: 0
    t.string   "ie",             limit: 20
    t.string   "ender",          limit: 100
    t.string   "numero",         limit: 10
    t.string   "bairro",         limit: 60
    t.string   "cidade",         limit: 100
    t.string   "uf",             limit: 2
    t.string   "cep",            limit: 9
    t.string   "ender_cob",      limit: 100
    t.string   "numero_cob",     limit: 10
    t.string   "bairro_cob",     limit: 60
    t.string   "cidade_cob",     limit: 100
    t.string   "uf_cob",         limit: 2
    t.string   "cep_cob",        limit: 9
    t.string   "ender_entrega",  limit: 100
    t.string   "numero_entrega", limit: 10
    t.string   "bairro_entrega", limit: 60
    t.string   "cidade_entrega", limit: 100
    t.string   "uf_entrega",     limit: 2
    t.string   "cep_entrega",    limit: 9
    t.string   "tel1",           limit: 20
    t.string   "tel2",           limit: 20
    t.string   "tel3",           limit: 20
    t.string   "email_nfe",      limit: 60
    t.string   "email_contato",  limit: 60
    t.string   "cli_ou_for",     limit: 1
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
    t.string   "nome"
    t.string   "login"
    t.string   "senha"
    t.integer  "nivel"
    t.float    "perComiss"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "salt"
  end

end
