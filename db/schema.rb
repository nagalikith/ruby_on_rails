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

ActiveRecord::Schema.define(version: 2021_04_27_192621) do

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

  create_table "case_studies", force: :cascade do |t|
    t.date "date"
    t.string "participant"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "club_id", null: false
    t.bigint "event_id", null: false
    t.index ["club_id"], name: "index_case_studies_on_club_id"
    t.index ["event_id"], name: "index_case_studies_on_event_id"
  end

  create_table "club_infos", force: :cascade do |t|
    t.date "date"
    t.integer "males"
    t.integer "females"
    t.integer "lowerage"
    t.integer "upperage"
    t.integer "disability"
    t.integer "ethnicity"
    t.integer "depravation"
    t.integer "drugsandabs"
    t.integer "neets"
    t.integer "mentalhealth"
    t.integer "volnum"
    t.float "volhours"
    t.integer "volachievetraining"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "club_id", null: false
    t.index ["club_id"], name: "index_club_infos_on_club_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
    t.string "postcode"
    t.integer "contactnumber"
    t.date "paymentduedate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consent_forms", force: :cascade do |t|
    t.string "participantname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "event_id"
    t.index ["event_id"], name: "index_consent_forms_on_event_id"
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer "priority", default: 0, null: false
    t.integer "attempts", default: 0, null: false
    t.text "handler", null: false
    t.text "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string "locked_by"
    t.string "queue"
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
    t.index ["priority", "run_at"], name: "delayed_jobs_priority"
  end

  create_table "donations", force: :cascade do |t|
    t.float "amount"
    t.date "date"
    t.string "method"
    t.float "recurring"
    t.string "restricted"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "donor_id", null: false
    t.index ["donor_id"], name: "index_donations_on_donor_id"
  end

  create_table "donors", force: :cascade do |t|
    t.string "name"
    t.text "type"
    t.integer "contactnumber"
    t.text "email"
    t.integer "totaldonation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "event_calendars", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "event_id"
    t.index ["event_id"], name: "index_event_calendars_on_event_id"
  end

  create_table "event_feedbacks", force: :cascade do |t|
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "event_id", null: false
    t.index ["event_id"], name: "index_event_feedbacks_on_event_id"
  end

  create_table "event_volunteers", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "volunteer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_event_volunteers_on_event_id"
    t.index ["volunteer_id"], name: "index_event_volunteers_on_volunteer_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "club_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.string "clubname"
    t.index ["club_id"], name: "index_events_on_club_id"
  end

  create_table "events_and_volunteers", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "volunteer_id"
    t.index ["event_id"], name: "index_events_and_volunteers_on_event_id"
    t.index ["volunteer_id"], name: "index_events_and_volunteers_on_volunteer_id"
  end

  create_table "meeting_types", force: :cascade do |t|
    t.string "day"
    t.integer "time"
    t.string "sessiontype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "club_infos_id", null: false
    t.index ["club_infos_id"], name: "index_meeting_types_on_club_infos_id"
  end

  create_table "prospective_donors", force: :cascade do |t|
    t.string "name"
    t.string "type"
    t.integer "contactnumber"
    t.string "internalcontactlink"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "club_id", null: false
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean "manager"
    t.index ["club_id"], name: "index_users_on_club_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "volunteers", force: :cascade do |t|
    t.string "name"
    t.integer "contactnumber"
    t.string "addressone"
    t.string "addresstwo"
    t.string "email"
    t.string "postcode"
    t.float "hours"
    t.float "target"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "club_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "case_studies", "clubs"
  add_foreign_key "case_studies", "events"
  add_foreign_key "club_infos", "clubs"
  add_foreign_key "consent_forms", "events"
  add_foreign_key "donations", "donors"
  add_foreign_key "event_calendars", "events"
  add_foreign_key "event_feedbacks", "events"
  add_foreign_key "events", "clubs"
  add_foreign_key "meeting_types", "club_infos", column: "club_infos_id"
  add_foreign_key "users", "clubs"
end
