class CreateCrushChemistries < ActiveRecord::Migration
  def self.up
    create_table :crush_chemistries do |t|
      t.integer :ferm_id, :null => false
      t.decimal :brix,  :precision => 3, :scale => 1
      t.decimal :ta,    :precision => 3, :scale => 2
      t.decimal :ph,    :precision => 3, :scale => 2
      t.integer :nh3,   :limit => 3

      t.timestamps
    end
    add_index :crush_chemistries, :ferm_id
    
  end

  def self.down
    drop_table :crush_chemistries
  end
end
