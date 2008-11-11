class Ferm < ActiveRecord::Base
  has_one :crush_chemistry, :dependent => :destroy
  
  validates_presence_of :tank
  validates_length_of :tank, :within => 1..6, :on => :create, :message => "must be less than 7 characters"
  validates_presence_of :blend
  validates_length_of :blend, :within => 3..12, :on => :create, :message => "must be between 3 and 12 characters"
  validates_presence_of :tons
  validates_numericality_of :tons, :greater_than => 0
  
end
