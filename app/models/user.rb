class User < ActiveRecord::Base
  self.inheritance_column = nil
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :parent, class_name: "User"
  has_many :children, class_name: "User", foreign_key: "parent_id", dependent: :destroy
  has_many :phones, dependent: :destroy
  has_one :card, dependent: :destroy
  has_many :user_ques
  has_many :questions, through: :user_ques
  
  validates_presence_of :name, :surname
end
