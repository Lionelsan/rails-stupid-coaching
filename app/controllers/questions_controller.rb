class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:answer]

      if @ask == "I am going to work"
        @answer = "Great"
      elsif @ask.end_with?("?")
        @answer = "Silly question, get dressed and go to work!"
      elsif @ask == ""
        @answer = "I can't hear you"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
  end
end
