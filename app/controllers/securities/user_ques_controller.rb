class Securities::UserQuesController < ApplicationController
  def new
    @questions = Question.all
    
    @answers = []
    
    if @questions
      @questions.each do |q|
        @answers << UserQue.new
      end
    end
  end
  
  def create
    @questions = Question.all
    @answers = []
    
    if @questions
      #@questions.each do |q|
      #  @answers << UserQue.new(user_ques_params)
      #end
      
      # for i in 0..(@questions.count - 1)
      #   @answers << UserQue.new(user_que_params)
      #   @answers[i].question = @questions[i]
      #   @answers[i].save
      # end
      
      i = 0
      
      user_que_params.each do |key, answers|
        answers.each do |answer|
          @answers << UserQue.new(answer: answer)
          @answers[i].user = current_user
          @answers[i].question = @questions[i]
          @answers[i].save
          i += 1
        end
      end
    end
    
    redirect_to security_path
  end

  def edit
  end
  
  private
    
    def user_que_params
      params.require(:user_que).permit(:answer => [])
    end
end
