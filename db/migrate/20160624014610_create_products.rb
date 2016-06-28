class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.date :vigencia
      t.date :emision
      t.string :tipo
      t.decimal :saldo

      t.timestamps null: false
    end
  end
end
