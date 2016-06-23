class CreateUserQues < ActiveRecord::Migration
  def change
    create_table :user_ques do |t|
      t.string :answer

      t.timestamps null: false
    end
  end
end
