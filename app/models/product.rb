class Product < ActiveRecord::Base
  validates_presence_of :nombre, :vigencia, :emision, :tipo, :saldo, :number
    
  belongs_to :user
  
  has_many :ope_pros
  has_many :operations, through: :ope_pros
end
