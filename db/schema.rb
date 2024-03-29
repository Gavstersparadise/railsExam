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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131217164949) do

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "emailAddress"
    t.string   "phoneNumber"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "orders", :force => true do |t|
    t.integer  "product_id"
    t.integer  "customer_id"
    t.date     "dateOrdered"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "posts", :force => true do |t|
    t.text     "content"
    t.integer  "customer_id"
    t.integer  "product_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "details"
    t.integer  "age"
    t.string   "developer"
    t.float    "price"
    t.text     "trailer"
    t.integer  "store_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stores", :force => true do |t|
    t.string   "address"
    t.string   "county"
    t.string   "phoneNumber"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.float    "longitude"
    t.float    "latitude"
  end

end
