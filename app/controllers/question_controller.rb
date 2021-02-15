# frozen_string_literal: false

# it works
class QuestionController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]
    if @question == ''
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
