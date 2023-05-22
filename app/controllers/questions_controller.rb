class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params[:questions]

    if @question == "I am going to work right now!"
      @answer = "Great!"
    elsif @question.ends_with?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
