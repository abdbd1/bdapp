class OpeRole < ActiveRecord::Base
  belongs_to :operation
  belongs_to :role
  belongs_to :account
end
