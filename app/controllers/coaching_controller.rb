class CoachingController < ApplicationController
  ANSWERS = {
    no_question:    "I don't care, get dressed and go to work!",
    silly_question: "Silly question, get dressed and go to work!"
  }



  def ask

  end

  def answer
    @query = params[:query]

    case
    when @query == "I am going to work right now!"
      @answer = ""
    when @query[-1] == "?"
      @answer = ANSWERS[:silly_question]
    else
      @answer = ANSWERS[:no_question]
    end
  end
end
