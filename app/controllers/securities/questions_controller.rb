class Securities::QuestionsController < ApplicationController
  def index
    @answers = current_user.user_ques
  end
end
