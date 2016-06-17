class Phone < ActiveRecord::Base
  self.inheritance_column = nil
  belongs_to :user
  
  validates_presence_of :number, :type
end
