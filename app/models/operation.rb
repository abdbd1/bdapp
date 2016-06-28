class Operation < ActiveRecord::Base
  validates_presence_of :acronimo, :nombre, :montomax, :montomin, :tipo, :natural
  
  has_many :user_opes
  has_many :users, through: :user_opes
  
  has_many :ope_roles
  has_many :roles, through: :ope_roles
  
  belongs_to :parent, class_name: "Operation"
  has_many :children, class_name: "Operation", foreign_key: "parent_id", dependent: :destroy
  
  has_many :ope_pros
  has_many :products, through: :ope_pros
  
  has_many :ope_levels
  has_many :approval_levels, through: :ope_levels
end
