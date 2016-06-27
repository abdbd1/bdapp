class OpePro < ActiveRecord::Base
  belongs_to :operation
  belongs_to :product
end
