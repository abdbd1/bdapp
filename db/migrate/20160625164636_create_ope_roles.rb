class CreateOpeRoles < ActiveRecord::Migration
  def change
    create_table :ope_roles do |t|
      t.references :operation, index: true, foreign_key: true
      t.references :role, index: true, foreign_key: true
      t.references :account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
