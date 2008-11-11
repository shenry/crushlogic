# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20081031034750) do

  create_table "crush_chemistries", :force => true do |t|
    t.integer  "ferm_id",                                               :null => false
    t.decimal  "brix",                    :precision => 3, :scale => 1
    t.decimal  "ta",                      :precision => 3, :scale => 2
    t.decimal  "ph",                      :precision => 3, :scale => 2
    t.integer  "nh3",        :limit => 3
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "crush_chemistries", ["ferm_id"], :name => "index_crush_chemistries_on_ferm_id"

  create_table "ferms", :force => true do |t|
    t.string   "tank",       :limit => 6,                                :default => "", :null => false
    t.string   "blend",      :limit => 12,                               :default => "", :null => false
    t.decimal  "tons",                     :precision => 3, :scale => 1,                 :null => false
    t.date     "crush_date",                                                             :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
