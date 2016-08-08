class PagesController < ApplicationController
  def answer
    @query = params[:query]
    if @query == @query.upcase
      @coach_answer = coach_answer_enhanced(@query)
    else
      @coach_answer = coach_answer(@query)
    end
  end

  def ask
  end

  def coach_answer(your_message)
    if your_message.downcase == "i am going to work right now!"
      ""
    elsif your_message.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "I AM GOING TO WORK RIGHT NOW!"
      ""
    elsif your_message.end_with?("?")
      "I can feel your motivation! Silly question, get dressed and go to work!"
    else
      "I can feel your motivation! I don't care, get dressed and go to work!"
    end
  end
end
