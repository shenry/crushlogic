class CrushChemistry < ActiveRecord::Base
  belongs_to :ferm
  
  validates_numericality_of :brix, :greater_than => 0
  validates_numericality_of :ta, :greater_than => 0  
  validates_numericality_of :ph, :greater_than => 2
  validates_numericality_of :nh3, :greater_than => 0
  
end
