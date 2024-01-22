# frozen_string_literal: true

# The QuestionsController handles interactions with questions.
class QuestionsController < ApplicationController
  def ask; end

  def answer
    if params[:question] == 'I am going to work'
      @answer = 'Great!'
      @answer
    elsif params[:question].end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
