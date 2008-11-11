class CreateFerms < ActiveRecord::Migration
  def self.up
    create_table :ferms do |t|
      t.string  :tank,      :limit => 6,  :default => "", :null => false
      t.string  :blend,     :limit => 12, :default => "", :null => false
      t.decimal :tons,      :precision => 3, :scale => 1, :null => false
      t.date    :crush_date,                              :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :ferms
  end
end
