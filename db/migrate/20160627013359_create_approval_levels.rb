class CreateApprovalLevels < ActiveRecord::Migration
  def change
    create_table :approval_levels do |t|
      t.string :nombre
      t.string :descripcion
      t.boolean :paralelo
      t.boolean :aprobado

      t.timestamps null: false
    end
  end
end
