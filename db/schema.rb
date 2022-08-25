# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_25_022310) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alunos", force: :cascade do |t|
    t.integer "cod"
    t.string "nome"
    t.integer "idade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "avaliacaos", force: :cascade do |t|
    t.bigint "disciplina_id", null: false
    t.bigint "sala_id", null: false
    t.bigint "aluno_id", null: false
    t.date "data"
    t.string "nota"
    t.string "float"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_avaliacaos_on_aluno_id"
    t.index ["disciplina_id"], name: "index_avaliacaos_on_disciplina_id"
    t.index ["sala_id"], name: "index_avaliacaos_on_sala_id"
  end

  create_table "classe_disciplinas", force: :cascade do |t|
    t.bigint "sala_id", null: false
    t.bigint "disciplina_id", null: false
    t.bigint "professor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disciplina_id"], name: "index_classe_disciplinas_on_disciplina_id"
    t.index ["professor_id"], name: "index_classe_disciplinas_on_professor_id"
    t.index ["sala_id"], name: "index_classe_disciplinas_on_sala_id"
  end

  create_table "classes", force: :cascade do |t|
    t.integer "cod"
    t.string "turma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplinas", force: :cascade do |t|
    t.integer "cod"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professors", force: :cascade do |t|
    t.integer "cod"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salas", force: :cascade do |t|
    t.integer "cod"
    t.string "turma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "avaliacaos", "alunos"
  add_foreign_key "avaliacaos", "disciplinas"
  add_foreign_key "avaliacaos", "salas"
  add_foreign_key "classe_disciplinas", "disciplinas"
  add_foreign_key "classe_disciplinas", "professors"
  add_foreign_key "classe_disciplinas", "salas"
end
