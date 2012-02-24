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

ActiveRecord::Schema.define(:version => 20120224211117) do

  create_table "companies", :force => true do |t|
    t.string   "company_id"
    t.string   "company_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "fax"
    t.string   "dba"
    t.date     "business_since"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "sales_tax_id"
    t.string   "credit_status"
    t.text     "comments"
    t.string   "business_type"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "inv_origins", :force => true do |t|
    t.string   "set_id"
    t.string   "element_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inv_x_refs", :force => true do |t|
    t.string   "company_id"
    t.string   "inv_id"
    t.string   "part_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "inventories", :force => true do |t|
    t.string   "inv_id"
    t.string   "s_desc"
    t.text     "l_desc"
    t.string   "image_path"
    t.string   "origin"
    t.integer  "qty_on_hand"
    t.integer  "qty_on_order"
    t.integer  "qty_available"
    t.string   "product_type"
    t.float    "sale_price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "payments", :force => true do |t|
    t.string   "trx_id"
    t.string   "trx_type"
    t.float    "amount_paid"
    t.date     "pmt_date"
    t.string   "pmt_type"
    t.string   "pmt_doc"
    t.text     "comments"
    t.string   "inv_adj_code"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "product_types", :force => true do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "trx_details", :force => true do |t|
    t.integer  "line_no"
    t.string   "trx_id"
    t.string   "item_id"
    t.integer  "quan_ordered"
    t.integer  "quan_shipped"
    t.float    "unit_price"
    t.text     "comments"
    t.boolean  "post"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "trx_headers", :force => true do |t|
    t.string   "company_id"
    t.string   "trx_type"
    t.string   "trx_id"
    t.text     "comments"
    t.date     "order_date"
    t.date     "ship_date"
    t.date     "order_ack_date"
    t.float    "total_amount"
    t.date     "close_date"
    t.float    "shipping_charges1"
    t.float    "shipping_charges2"
    t.string   "tracking_number"
    t.string   "carrier"
    t.string   "agent1"
    t.float    "bank_charges"
    t.float    "other_charges"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
