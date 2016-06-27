class User < ActiveRecord::Base
  self.inheritance_column = nil
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :validatable #, :recoverable, :trackable
  
  belongs_to :parent, class_name: "User"
  has_many :children, class_name: "User", foreign_key: "parent_id", dependent: :destroy
  
  has_many :phones, dependent: :destroy
  
  has_one :card, dependent: :destroy
  
  has_many :user_ques
  has_many :questions, through: :user_ques
  
  has_many :products, dependent: :destroy
  
  has_many :user_roles, dependent: :destroy
  has_many :roles, through: :user_roles
  
  has_many :user_opes
  has_many :operations, through: :user_opes
  
  has_many :otps
  
  validates_presence_of :name, :surname
end
