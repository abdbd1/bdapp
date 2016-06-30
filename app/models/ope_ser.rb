class OpeSer < ActiveRecord::Base
  belongs_to :operation
  belongs_to :service
end
