class AnswerController < ApplicationController
  def answer
    @ask = params[:userquestion]
    if @ask.downcase == 'i am going to work'
      @answer = 'Great!'
    elsif @ask.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = " I don't care, get dressed and go to work"
    end
  end
end
