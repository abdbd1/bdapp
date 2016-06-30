class Service < ActiveRecord::Base
  has_many :ope_sers
  has_many :services, through: :ope_sers
end
