class User < ActiveRecord::Base
  self.inheritance_column = nil
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  belongs_to :parent, class_name: "User"
  has_many :children, class_name: "User", foreign_key: "parent_id", dependent: :destroy
  has_many :phones, dependent: :destroy
  
  validates_presence_of :name, :surname
  
  #def descendants
  #  children.map do |child|
  #    [child] + child.descendents
  #  end.flatten
  #end

  #def self_and_descendants
  #  [self] + descendants
  #end
end
