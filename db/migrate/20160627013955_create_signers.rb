class CreateSigners < ActiveRecord::Migration
  def change
    create_table :signers do |t|
      t.string :tipo_firma
      t.references :approval_level, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
