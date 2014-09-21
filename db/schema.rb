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

ActiveRecord::Schema.define(version: 20140921040082) do

  create_table "discerner_dictionaries", force: true do |t|
    t.string   "name",           null: false
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "namespace_id"
    t.string   "namespace_type"
  end

  add_index "discerner_dictionaries", ["name", "deleted_at"], name: "index_discerner_dictionaries", unique: true

  create_table "discerner_export_parameters", force: true do |t|
    t.integer  "search_id"
    t.integer  "parameter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "discerner_operators", force: true do |t|
    t.string   "symbol"
    t.string   "text"
    t.boolean  "binary"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unique_identifier"
    t.string   "operator_type"
  end

  add_index "discerner_operators", ["unique_identifier", "deleted_at"], name: "index_discerner_operators", unique: true

  create_table "discerner_operators_parameter_types", force: true do |t|
    t.integer "operator_id"
    t.integer "parameter_type_id"
  end

  create_table "discerner_parameter_categories", force: true do |t|
    t.integer  "dictionary_id", null: false
    t.string   "name",          null: false
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discerner_parameter_categories", ["name", "dictionary_id", "deleted_at"], name: "index_discerner_parameter_categories", unique: true

  create_table "discerner_parameter_types", force: true do |t|
    t.string   "name"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discerner_parameter_types", ["name", "deleted_at"], name: "index_discerner_parameter_types", unique: true

  create_table "discerner_parameter_value_categories", force: true do |t|
    t.integer  "parameter_id"
    t.string   "name"
    t.string   "unique_identifier"
    t.integer  "display_order"
    t.datetime "deleted_at"
    t.boolean  "collapse"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discerner_parameter_value_categories", ["parameter_id", "unique_identifier", "deleted_at"], name: "discerner_parameter_value_categories_uniq_index", unique: true

  create_table "discerner_parameter_value_categorizations", force: true do |t|
    t.integer  "parameter_value_category_id"
    t.integer  "parameter_value_id"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discerner_parameter_value_categorizations", ["parameter_value_category_id", "parameter_value_id", "deleted_at"], name: "discerner_parameter_value_categorizations_uniq_index", unique: true

  create_table "discerner_parameter_values", force: true do |t|
    t.string   "name",         limit: 1000
    t.string   "search_value"
    t.datetime "deleted_at"
    t.integer  "parameter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discerner_parameter_values", ["search_value", "parameter_id", "deleted_at"], name: "index_discerner_parameter_values", unique: true

  create_table "discerner_parameters", force: true do |t|
    t.string   "name"
    t.datetime "deleted_at"
    t.integer  "parameter_category_id"
    t.integer  "parameter_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "search_model"
    t.boolean  "searchable"
    t.boolean  "exclusive"
    t.string   "unique_identifier"
    t.string   "search_method"
    t.string   "export_model"
    t.string   "export_method"
  end

  create_table "discerner_search_combinations", force: true do |t|
    t.integer  "search_id"
    t.integer  "combined_search_id"
    t.integer  "operator_id"
    t.integer  "display_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "discerner_search_namespaces", force: true do |t|
    t.integer "search_id"
    t.string  "namespace_type"
    t.integer "namespace_id"
  end

  create_table "discerner_search_parameter_values", force: true do |t|
    t.integer  "parameter_value_id"
    t.integer  "operator_id"
    t.integer  "search_parameter_id"
    t.string   "value"
    t.string   "additional_value"
    t.boolean  "chosen"
    t.integer  "display_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "discerner_search_parameters", force: true do |t|
    t.integer  "search_id"
    t.integer  "parameter_id"
    t.integer  "display_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "deleted_at"
  end

  create_table "discerner_searches", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "dictionary_id"
    t.string   "label"
  end

end
