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

ActiveRecord::Schema.define(version: 20180313184742) do

  create_table "mentors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email"
    t.string "field"
    t.string "first_name"
    t.string "last_name"
  end

  create_table "projects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "team_id"
    t.string "big_idea"
    t.string "description"
    t.string "name"
    t.index ["team_id"], name: "index_projects_on_team_id"
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "cohort"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "profile"
  end

  create_table "students_teams", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "student_id", null: false
    t.bigint "team_id", null: false
    t.index ["student_id"], name: "index_students_teams_on_student_id"
    t.index ["team_id"], name: "index_students_teams_on_team_id"
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
  end

end
