class Securities::QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end
end
