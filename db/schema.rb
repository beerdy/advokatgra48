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

ActiveRecord::Schema.define(version: 20171113131937) do

  create_table "adwards", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid",   limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image_name",  limit: 255
  end

  add_index "adwards", ["id"], name: "sqlite_autoindex_adwards_1", unique: true

  create_table "articles", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.string   "image_uid",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.text     "slave"
    t.string   "url",         limit: 255
  end

  add_index "articles", ["id"], name: "sqlite_autoindex_articles_1", unique: true

  create_table "clients", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid",   limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "clients", ["id"], name: "sqlite_autoindex_clients_1", unique: true

  create_table "contacts", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "phone",       limit: 255
    t.string   "address",     limit: 255
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid",   limit: 255
    t.string   "url",         limit: 255
    t.text     "map"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "contacts", ["id"], name: "sqlite_autoindex_contacts_1", unique: true

  create_table "contents", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "slave"
    t.string   "image1_uid"
    t.string   "image1_name"
    t.string   "url"
    t.integer  "sort"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "ds", force: :cascade do |t|
    t.string   "about",       limit: 255
    t.string   "title",       limit: 255
    t.text     "description"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "ds", ["id"], name: "sqlite_autoindex_ds_1", unique: true

  create_table "groups", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid",   limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "groups", ["id"], name: "sqlite_autoindex_groups_1", unique: true

  create_table "infos", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid",   limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "infos", ["id"], name: "sqlite_autoindex_infos_1", unique: true

  create_table "news", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.string   "image_uid",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "news", ["id"], name: "sqlite_autoindex_news_1", unique: true

  create_table "papers", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid",   limit: 255
    t.string   "image_name",  limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "papers", ["id"], name: "sqlite_autoindex_papers_1", unique: true

  create_table "services", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.text     "slave"
    t.string   "image_uid",   limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "serious",     limit: 1
    t.integer  "special",     limit: 1
    t.integer  "group_id",    limit: 11
    t.integer  "top",         limit: 1
  end

  add_index "services", ["id"], name: "sqlite_autoindex_services_1", unique: true

  create_table "sliders", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.string   "image_uid",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image_name",  limit: 255
  end

  add_index "sliders", ["id"], name: "sqlite_autoindex_sliders_1", unique: true

  create_table "teams", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.string   "image_uid",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "teams", ["id"], name: "sqlite_autoindex_teams_1", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 11,  default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "users_index_users_on_email"
  add_index "users", ["id"], name: "sqlite_autoindex_users_1", unique: true
  add_index "users", ["reset_password_token"], name: "users_index_users_on_reset_password_token"

  create_table "works", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description"
    t.string   "image_uid",   limit: 255
    t.string   "url",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "works", ["id"], name: "sqlite_autoindex_works_1", unique: true

end
