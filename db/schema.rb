# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_10_212520) do

  create_table "atividades", force: :cascade do |t|
    t.date "data_at"
    t.time "horario_at"
    t.string "tipo"
    t.string "comentarios"
    t.integer "subject_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subject_id"], name: "index_atividades_on_subject_id"
  end

  create_table "aulas", force: :cascade do |t|
    t.date "data_aul"
    t.time "horario_aul"
    t.integer "subject_id", null: false
    t.string "compareceu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["subject_id"], name: "index_aulas_on_subject_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "nome"
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "comeco_semestre"
    t.string "date"
    t.date "final_semestre"
    t.date "comeco"
    t.index ["user_id"], name: "index_grades_on_user_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "nome"
    t.string "codigo"
    t.string "creditos"
    t.float "presenca"
    t.string "dia_semana"
    t.datetime "horario"
    t.integer "grade_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "dia_semana1"
    t.time "horario1"
    t.string "dia_semana2"
    t.time "horario2"
    t.string "dia_semana3"
    t.time "horario3"
    t.string "quinzenal"
    t.index ["grade_id"], name: "index_subjects_on_grade_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "atividades", "subjects"
  add_foreign_key "aulas", "subjects"
  add_foreign_key "grades", "users"
  add_foreign_key "subjects", "grades"
end
