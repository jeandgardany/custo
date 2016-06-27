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

ActiveRecord::Schema.define(version: 20160616200632) do

  create_table "compras", force: :cascade do |t|
    t.date     "data"
    t.decimal  "valor_kg",                precision: 5, scale: 2, default: 0.0
    t.decimal  "valor_total",             precision: 6, scale: 2, default: 0.0
    t.decimal  "peso_total",              precision: 5, scale: 2, default: 0.0
    t.integer  "tecido_id",     limit: 4
    t.integer  "fornecedor_id", limit: 4
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
  end

  add_index "compras", ["fornecedor_id"], name: "index_compras_on_fornecedor_id", using: :btree
  add_index "compras", ["tecido_id"], name: "index_compras_on_tecido_id", using: :btree

  create_table "despesas", force: :cascade do |t|
    t.decimal  "total",                precision: 5, scale: 2, default: 0.0
    t.decimal  "corte",                precision: 5, scale: 2, default: 0.0
    t.decimal  "costura",              precision: 5, scale: 2, default: 0.0
    t.decimal  "pintura",              precision: 5, scale: 2, default: 0.0
    t.decimal  "bordado",              precision: 5, scale: 2, default: 0.0
    t.decimal  "diversos",             precision: 5, scale: 2, default: 0.0
    t.integer  "produto_id", limit: 4
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  add_index "despesas", ["produto_id"], name: "index_despesas_on_produto_id", using: :btree

  create_table "fornecedors", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "endereco",   limit: 255
    t.string   "vendedor",   limit: 255
    t.integer  "telefone",   limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.string   "modelo",     limit: 255
    t.string   "tamanho",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "produtos_quantidades", id: false, force: :cascade do |t|
    t.integer "produto_id",    limit: 4
    t.integer "quantidade_id", limit: 4
  end

  create_table "quantidades", force: :cascade do |t|
    t.integer  "q_corte",    limit: 4
    t.decimal  "rendimento",           precision: 5, scale: 2, default: 0.0
    t.integer  "compra_id",  limit: 4
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
  end

  add_index "quantidades", ["compra_id"], name: "index_quantidades_on_compra_id", using: :btree

  create_table "tecidos", force: :cascade do |t|
    t.string   "nome",       limit: 255
    t.decimal  "largura",                precision: 4, scale: 2, default: 0.0
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  create_table "vendas", force: :cascade do |t|
    t.date     "data"
    t.decimal  "valor_bruto",             precision: 5, scale: 2, default: 0.0
    t.decimal  "valor_venda",             precision: 5, scale: 2, default: 0.0
    t.decimal  "lucro",                   precision: 5, scale: 2, default: 0.0
    t.integer  "despesa_id",    limit: 4
    t.integer  "quantidade_id", limit: 4
    t.integer  "produto_id",    limit: 4
    t.datetime "created_at",                                                    null: false
    t.datetime "updated_at",                                                    null: false
  end

  add_index "vendas", ["despesa_id"], name: "index_vendas_on_despesa_id", using: :btree
  add_index "vendas", ["produto_id"], name: "index_vendas_on_produto_id", using: :btree
  add_index "vendas", ["quantidade_id"], name: "index_vendas_on_quantidade_id", using: :btree

  add_foreign_key "compras", "fornecedors"
  add_foreign_key "compras", "tecidos"
  add_foreign_key "despesas", "produtos"
  add_foreign_key "quantidades", "compras"
  add_foreign_key "vendas", "despesas"
  add_foreign_key "vendas", "produtos"
  add_foreign_key "vendas", "quantidades"
end
