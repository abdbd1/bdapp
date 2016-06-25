class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :acronimo
      t.string :nombre
      t.integer :montomax
      t.integer :montomin
      t.string :tipo
      t.boolean :natural
      t.boolean :juridico

      t.timestamps null: false
    end
  end
end
