class AddStatusToAudits < ActiveRecord::Migration
  def change
    add_column :audits, :approved, :boolean
  end
end
