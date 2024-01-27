class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    # Compute the coach's answer
      if @question == 'I am going to work'
        @answer = 'Great!'
      elsif @question.ends_with?('?')
        @answer ='Silly question, get dressed and go to work!'
      elsif @question.blank?
        @answer = "I can't hear you!"
      else
        @answer ='I don\'t care, get dressed and go to work!'
      end
  end
end
