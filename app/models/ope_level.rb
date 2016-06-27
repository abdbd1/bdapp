class OpeLevel < ActiveRecord::Base
  belongs_to :operation
  belongs_to :approval_level
end
