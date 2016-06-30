class AddBirthAndGenderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :birth, :date
    add_column :users, :male, :boolean
  end
end
