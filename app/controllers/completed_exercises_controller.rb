class CompletedExercisesController < ApplicationController
  def random_number
    # This picks a number between 0-99
    render plain: rand(100)
  end

  def date_time
    render plain: Time.now
  end
end
