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

ActiveRecord::Schema.define(version: 20170210130155) do

  create_table "admin_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "surname"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "email"
    t.string   "password_digest"
  end

  create_table "admin_users_pages", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "admin_user_id"
    t.integer "page_id"
    t.index ["admin_user_id"], name: "index_admin_users_pages_on_admin_user_id", using: :btree
    t.index ["page_id"], name: "index_admin_users_pages_on_page_id", using: :btree
  end

  create_table "alliances", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.string   "symbol"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "alliances_players", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "alliance_id"
    t.integer "player_id"
    t.index ["alliance_id"], name: "index_alliances_players_on_alliance_id", using: :btree
    t.index ["player_id"], name: "index_alliances_players_on_player_id", using: :btree
  end

  create_table "customers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text     "firstname",   limit: 65535
    t.text     "surname",     limit: 65535
    t.text     "city",        limit: 65535
    t.text     "project",     limit: 65535
    t.text     "seeking_for", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "developers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text     "firstname",  limit: 65535
    t.text     "surname",    limit: 65535
    t.text     "role",       limit: 65535
    t.integer  "experience"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "player_id"
    t.text     "gameName",   limit: 255
    t.integer  "totalGold",              default: 4000
    t.integer  "totalWood",              default: 8000
    t.integer  "totalMetal",             default: 5000
    t.integer  "totalFood",              default: 15000
    t.integer  "nPlayers"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.index ["player_id"], name: "index_games_on_player_id", using: :btree
  end

  create_table "pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.integer  "subject_id"
    t.integer  "permalink"
    t.integer  "position"
    t.boolean  "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["permalink"], name: "index_pages_on_permalink", using: :btree
    t.index ["subject_id"], name: "index_pages_on_subject_id", using: :btree
  end

  create_table "players", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.text     "kingdom",     limit: 65535
    t.text     "king",        limit: 65535
    t.text     "location",    limit: 65535
    t.integer  "qWood"
    t.integer  "qMetal"
    t.integer  "qFood"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "location_id"
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "section_edits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "admin_user_id"
    t.integer  "section_id"
    t.string   "summary"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["admin_user_id", "section_id"], name: "index_section_edits_on_admin_user_id_and_section_id", using: :btree
    t.index ["admin_user_id"], name: "index_section_edits_on_admin_user_id", using: :btree
    t.index ["section_id"], name: "index_section_edits_on_section_id", using: :btree
  end

  create_table "sections", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "page_id"
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible"
    t.string   "content_type"
    t.text     "content",      limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["page_id"], name: "index_sections_on_page_id", using: :btree
  end

  create_table "subjects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.integer  "position"
    t.boolean  "visible"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_subjects_on_name", using: :btree
  end

  create_table "tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "developer_id"
    t.integer  "customer_id"
    t.string   "description"
    t.integer  "developer_feedback"
    t.integer  "customer_feedback"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["customer_id"], name: "index_tasks_on_customer_id", using: :btree
    t.index ["developer_id", "customer_id"], name: "index_tasks_on_developer_id_and_customer_id", using: :btree
    t.index ["developer_id"], name: "index_tasks_on_developer_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "name"
    t.integer  "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
