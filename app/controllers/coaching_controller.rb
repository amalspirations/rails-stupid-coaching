class CoachingController < ApplicationController

  def ask
  end

  MESSAGES = []
  def answer
    MESSAGES << { question: params[:query], answer: coach_answer(params[:query]) }
    @messages = MESSAGES.reverse
  end

  # --- ANSWER GENERATOR

  def coach_answer(your_message)
    if your_message.downcase == "i am going to work right now!"
      return "GO!"
    elsif your_message == your_message.upcase && your_message != ""
      return "I can feel your motivation!" + coach_simple_answer(your_message)
    else
      return coach_simple_answer(your_message)
    end
  end
  def coach_simple_answer(your_message)
    if your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

end








