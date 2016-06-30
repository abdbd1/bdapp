class Audit < ActiveRecord::Base
  belongs_to :user
  belongs_to :operation
end
