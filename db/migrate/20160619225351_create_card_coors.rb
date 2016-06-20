class CreateCardCoors < ActiveRecord::Migration
  def change
    create_table :card_coors do |t|

      t.timestamps null: false
    end
  end
end
