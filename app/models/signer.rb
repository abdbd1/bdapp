class Signer < ActiveRecord::Base
  belongs_to :approval_level
  belongs_to :user
end
