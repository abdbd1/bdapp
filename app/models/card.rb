class Card < ActiveRecord::Base
  belongs_to :user
  has_many :card_coors, dependent: :destroy
  has_many :coordinates, through: :card_coors, dependent: :destroy
end
