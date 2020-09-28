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

ActiveRecord::Schema.define(version: 2020_09_27_093100) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "adresses", force: :cascade do |t|
    t.string "pays"
    t.string "adresse1", default: [], array: true
    t.integer "code"
    t.string "ville", default: [], array: true
    t.bigint "logement_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "adresse2"
    t.index ["logement_id"], name: "index_adresses_on_logement_id"
  end

  create_table "autrelits", force: :cascade do |t|
    t.string "title"
    t.bigint "autre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["autre_id"], name: "index_autrelits_on_autre_id"
  end

  create_table "autres", force: :cascade do |t|
    t.string "title"
    t.bigint "logement_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["logement_id"], name: "index_autres_on_logement_id"
  end

  create_table "canapes", force: :cascade do |t|
    t.string "title"
    t.bigint "salon_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["salon_id"], name: "index_canapes_on_salon_id"
  end

  create_table "cartes", force: :cascade do |t|
    t.float "longitude"
    t.float "latitude"
    t.bigint "logement_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["logement_id"], name: "index_cartes_on_logement_id"
  end

  create_table "chambrequipements", force: :cascade do |t|
    t.bigint "chambre_id"
    t.bigint "equipement_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chambre_id"], name: "index_chambrequipements_on_chambre_id"
    t.index ["equipement_id"], name: "index_chambrequipements_on_equipement_id"
  end

  create_table "chambres", force: :cascade do |t|
    t.string "title"
    t.bigint "logement_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["logement_id"], name: "index_chambres_on_logement_id"
  end

  create_table "conditions", force: :cascade do |t|
    t.string "condition"
    t.bigint "logement_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["logement_id"], name: "index_conditions_on_logement_id"
  end

  create_table "departarrives", force: :cascade do |t|
    t.string "depart"
    t.string "arrive"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "equipements", force: :cascade do |t|
    t.string "title"
    t.bigint "logement_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["logement_id"], name: "index_equipements_on_logement_id"
  end

  create_table "lits", force: :cascade do |t|
    t.string "title"
    t.bigint "chambre_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "number"
    t.index ["chambre_id"], name: "index_lits_on_chambre_id"
  end

  create_table "logements", force: :cascade do |t|
    t.string "categorie"
    t.string "types"
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_logements_on_user_id"
  end

  create_table "reglelogs", force: :cascade do |t|
    t.bigint "logement_id"
    t.bigint "regle_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["logement_id"], name: "index_reglelogs_on_logement_id"
    t.index ["regle_id"], name: "index_reglelogs_on_regle_id"
  end

  create_table "regles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.bigint "logement_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["logement_id"], name: "index_reservations_on_logement_id"
  end

  create_table "salons", force: :cascade do |t|
    t.string "title"
    t.bigint "logement_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["logement_id"], name: "index_salons_on_logement_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "first_name"
    t.string "adresse"
    t.string "mobile"
    t.string "date_of_birth"
    t.string "sexe"
    t.integer "urgence"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
