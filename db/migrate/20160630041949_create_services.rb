class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :acronimo
      t.string :nombre

      t.timestamps null: false
    end
  end
end
