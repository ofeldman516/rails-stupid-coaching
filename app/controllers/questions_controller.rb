class QuestionsController < ApplicationController
  def ask
  end

  def answer
    query = params[:query]

    @coach_answer = "I don't care, get dressed and go to work!"
    @coach_answer = 'Great!' if query == 'I am going to work'
    @coach_answer = 'Silly question, get dressed and go to work!' if query.include?('?')
  end
end
