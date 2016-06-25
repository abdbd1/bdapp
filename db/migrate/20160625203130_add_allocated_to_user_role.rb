class AddAllocatedToUserRole < ActiveRecord::Migration
  def change
    add_column :user_roles, :asignado, :boolean
  end
end
