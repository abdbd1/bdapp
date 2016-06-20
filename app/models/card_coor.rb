class CardCoor < ActiveRecord::Base
  belongs_to :card
  belongs_to :coordinate
end
