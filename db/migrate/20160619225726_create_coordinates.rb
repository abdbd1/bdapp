class CreateCoordinates < ActiveRecord::Migration
  def change
    create_table :coordinates do |t|
      t.integer :column
      t.integer :row
      t.string :value

      t.timestamps null: false
    end
  end
end
