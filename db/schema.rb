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

ActiveRecord::Schema.define(version: 20170219030234) do

  create_table "aboutwes", force: :cascade do |t|
    t.string   "title_left"
    t.string   "title_right"
    t.string   "icon_class"
    t.string   "sub_title"
    t.string   "sub_content"
    t.string   "sub_picture_url",  default: ""
    t.string   "link_id"
    t.string   "interact_factor1"
    t.string   "interact_factor2"
    t.string   "alt"
    t.string   "language"
    t.integer  "data_percent"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "admins", force: :cascade do |t|
    t.string   "admin_id"
    t.string   "admin_pw"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "line_num1"
    t.string   "line_num2"
    t.string   "line_num3"
    t.string   "line_num4"
    t.string   "sns_link"
    t.string   "sns_class"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homepages", force: :cascade do |t|
    t.boolean  "active",       default: false
    t.string   "heading"
    t.string   "animated"
    t.string   "button"
    t.string   "ani_heading"
    t.string   "ani_animated"
    t.string   "ani_button"
    t.string   "link"
    t.string   "picture_url",  default: ""
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "navigators", force: :cascade do |t|
    t.string   "navi_name1"
    t.string   "navi_name2"
    t.string   "navi_name3"
    t.string   "navi_name4"
    t.string   "navi_name5"
    t.string   "navi_name6"
    t.string   "navi_name7"
    t.string   "navi_name8"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ourteams", force: :cascade do |t|
    t.string   "img_url",    default: ""
    t.string   "name"
    t.string   "major"
    t.string   "saying"
    t.string   "sns_1",      default: "#"
    t.string   "sns_2",      default: "#"
    t.string   "sns_3",      default: "#"
    t.string   "sns_4",      default: "#"
    t.string   "sns_5",      default: "#"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "section_title"
    t.string   "section_content"
    t.string   "section_background", default: ""
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "services", force: :cascade do |t|
    t.string   "svc_title"
    t.string   "svc_content"
    t.string   "svc_link",    default: "#"
    t.string   "pic_url",     default: ""
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

end
