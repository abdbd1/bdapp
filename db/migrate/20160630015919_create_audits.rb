class CreateAudits < ActiveRecord::Migration
  def change
    create_table :audits do |t|
      t.string :concepto
      t.decimal :monto
      t.string :email
      t.date :fecha
      t.time :hora
      t.references :user, index: true, foreign_key: true
      t.references :operation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
