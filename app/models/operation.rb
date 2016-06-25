class Operation < ActiveRecord::Base
  validates_presence_of :acronimo, :nombre, :montomax, :montomin, :tipo, :natural
  
  has_many :user_opes
  has_many :users, through: :user_opes
  
  has_many :ope_roles
  has_many :roles, through: :ope_roles
end
