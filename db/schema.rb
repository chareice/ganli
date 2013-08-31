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

ActiveRecord::Schema.define(version: 20130829080536) do

  create_table "admin_menu_permissions", force: true do |t|
    t.integer  "admin_menu_id"
    t.integer  "permission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "admin_menus", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "affair_form_instance_audit_logs", force: true do |t|
    t.integer  "instance_id"
    t.integer  "status"
    t.string   "remark"
    t.integer  "approver"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "affair_form_instances", force: true do |t|
    t.string   "title"
    t.text     "form"
    t.integer  "affair_form_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "audit_process"
    t.integer  "status",         default: 0
    t.integer  "proposer"
  end

  create_table "affair_forms", force: true do |t|
    t.string   "title"
    t.text     "form"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "audit_process"
  end

  create_table "articles", force: true do |t|
    t.string   "title"
    t.text     "content",           limit: 16777215
    t.integer  "classification_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",                             default: 0
  end

  create_table "classfiys", force: true do |t|
    t.string   "name"
    t.integer  "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "classifications", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "documents", force: true do |t|
    t.string   "name"
    t.string   "path"
    t.integer  "status",     default: 0
    t.integer  "uploader"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_links", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "rank"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups_permissions", force: true do |t|
    t.integer  "permission_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guest_messages", force: true do |t|
    t.integer  "status",     default: 0
    t.string   "nickname"
    t.text     "content"
    t.string   "ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lunches", force: true do |t|
    t.date     "date"
    t.integer  "teacher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "navigations", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "nav_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rank"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.integer  "navigation_id"
    t.text     "content",       limit: 16777215
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permission_actions", force: true do |t|
    t.integer  "permission_id"
    t.string   "action"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "permissions", force: true do |t|
    t.string   "name"
    t.string   "describe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "replies", force: true do |t|
    t.integer  "user_id"
    t.integer  "topic_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_groups", force: true do |t|
    t.integer  "user_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
