class AddSignatoryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :signatory, :boolean
  end
end
