class CreateOpeSers < ActiveRecord::Migration
  def change
    create_table :ope_sers do |t|
      t.references :operation, index: true, foreign_key: true
      t.references :service, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
