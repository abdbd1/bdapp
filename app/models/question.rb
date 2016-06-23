class Question < ActiveRecord::Base
  has_many :user_ques
  has_many :users, through: :user_ques
end
