class RemoveJuridicoFromOperations < ActiveRecord::Migration
  def change
    remove_column :operations, :juridico, :boolean
  end
end
