class Role < ActiveRecord::Base
  has_many :user_roles, dependent: :destroy
  has_many :users, through: :user_roles
  
  has_many :ope_roles, dependent: :destroy
  has_many :operations, through: :ope_roles
  
  validates_presence_of :nombre, :descripcion
  #validates_uniqueness_of :nombre
end
