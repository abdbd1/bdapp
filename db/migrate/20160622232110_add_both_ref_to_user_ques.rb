class AddBothRefToUserQues < ActiveRecord::Migration
  def change
    add_reference :user_ques, :user, index: true, foreign_key: true
    add_reference :user_ques, :question, index: true, foreign_key: true
  end
end
