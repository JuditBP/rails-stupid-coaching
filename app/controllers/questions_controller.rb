class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @question = params[:question]
    @answer = compute_answer(@question)
  end

  private

  def compute_answer(question)
    return "Please ask a question!" if question.nil? || question.strip.empty?

    if question.downcase == 'I am going to work'.downcase
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
