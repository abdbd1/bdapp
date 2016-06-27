class CreateOpePros < ActiveRecord::Migration
  def change
    create_table :ope_pros do |t|
      t.references :operation, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
