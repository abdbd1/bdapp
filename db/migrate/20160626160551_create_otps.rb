class CreateOtps < ActiveRecord::Migration
  def change
    create_table :otps do |t|
      t.string :clave
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
