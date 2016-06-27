class CreateOpeLevels < ActiveRecord::Migration
  def change
    create_table :ope_levels do |t|
      t.integer :rango_min
      t.integer :rango_max
      t.references :operation, index: true, foreign_key: true
      t.references :approval_level, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
