class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # raise #=> to stop execution and play with variables and next steps in an irb like environnement
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
