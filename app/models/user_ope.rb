class UserOpe < ActiveRecord::Base
  belongs_to :user
  belongs_to :operation
  belongs_to :account
end
