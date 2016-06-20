class Coordinate < ActiveRecord::Base
  has_many :card_coors
  has_many :cards, through: :card_coors
  
  validates_presence_of :row, :column, :value
end
