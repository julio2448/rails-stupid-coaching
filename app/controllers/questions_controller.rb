class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:questions]
      if params[:questions].include?('I am going to work')
        @answer = 'Great'
      elsif params[:questions].end_with?('?')
        @answer = 'Silly question, get dressed and go to work'
      else
        @answer = 'I dont care, get dressed and go to work'
      end
    else
      @answer = 'Type something....'
    end
  end
end
