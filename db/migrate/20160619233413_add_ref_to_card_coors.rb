class AddRefToCardCoors < ActiveRecord::Migration
  def change
    add_reference :card_coors, :card, index: true, foreign_key: true
    add_reference :card_coors, :coordinate, index: true, foreign_key: true
  end
end
