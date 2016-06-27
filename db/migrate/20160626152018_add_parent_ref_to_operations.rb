class AddParentRefToOperations < ActiveRecord::Migration
  def change
    add_column :operations, :parent_id, :integer
  end
end
