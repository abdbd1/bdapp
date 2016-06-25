class CreateUserOpes < ActiveRecord::Migration
  def change
    create_table :user_opes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :operation, index: true, foreign_key: true
      t.references :account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
