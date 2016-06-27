class ApprovalLevel < ActiveRecord::Base
  has_many :ope_levels
  has_many :operations, through: :ope_level
  
  has_many :signers
  has_many :users, through: :signers
end
