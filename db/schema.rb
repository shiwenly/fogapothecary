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

ActiveRecord::Schema.define(version: 2020_08_06_161021) do

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

  create_table "journals", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "picture1", default: "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    t.string "picture2", default: "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    t.string "picture3", default: "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    t.string "picture4", default: "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "statut"
    t.index ["user_id"], name: "index_journals_on_user_id"
  end

  create_table "pages", force: :cascade do |t|
    t.string "banner_pic", default: "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    t.string "title"
    t.text "description"
    t.string "rounded_pic", default: "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    t.string "separation_pic", default: "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    t.string "title1"
    t.text "description1"
    t.string "square_pic", default: "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    t.string "title2"
    t.text "description2"
    t.string "benefit1"
    t.string "benefit2"
    t.string "benefit3"
    t.string "benefit4"
    t.string "title3"
    t.text "description3"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "product1"
    t.integer "product2"
    t.integer "product3"
    t.integer "product4"
    t.index ["user_id"], name: "index_pages_on_user_id"
  end

  create_table "philosophies", force: :cascade do |t|
    t.string "picture1"
    t.string "title"
    t.text "description"
    t.text "description1"
    t.text "description2"
    t.text "description3"
    t.string "title1"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_philosophies_on_user_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "picture1", default: "https://res.cloudinary.com/fogapothecary/image/upload/v1596465097/default_annonce_wxhhsp.png"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "statut"
    t.string "category_product"
    t.string "title"
    t.string "title1"
    t.text "description1"
    t.string "title2"
    t.text "description2"
    t.text "price"
    t.index ["user_id"], name: "index_products_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "journals", "users"
  add_foreign_key "pages", "users"
  add_foreign_key "philosophies", "users"
  add_foreign_key "products", "users"
end
