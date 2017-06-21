class CompletedExercisesController < ApplicationController
  def my_info
    # http://localhost:3000/answers/my_info

    output = "
    My name is Jimbo Jambo and I live in Boston.
    I'm currently at the startup institute where I'm learning to
    be BOSS and Web Development and Startup Lyfe
    "

    render plain: output
  end

  def random_number
    # http://localhost:3000/answers/random_number

    # This picks a number between 0-99
    render plain: rand(100)
  end

  def date_time
    # http://localhost:3000/answers/date_time
    render plain: Time.now
  end

  def random_state
    # http://localhost:3000/answers/random_state

    render plain: STATES.sample
  end

  STATES = [
    'Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado',
    'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho',
    'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
    'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi',
    'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey',
    'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma',
    'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota',
    'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia',
    'Wisconsin', 'Wyoming'
  ]

  def equal_params
    # http://localhost:3000/answers/equal_params?param1=hello&param2=hello

    first_param = params[:param1]
    second_param = params[:param2]

    if first_param == second_param
      render plain: "The params are the same"
    else
      render plain: "The params are different"
    end
  end

  def present_in_array
    # http://localhost:3000/answers/present_in_array?guess=hello

    array = [123, 'hello', 'test', 'oh no!']
    guess = params[:guess]

    if array.include?(guess)
      render plain: "Yes! '#{guess}' is present in the array!"
    else
      render plain: "I'm sorry #{guess} was not present in the array"
    end
  end

  def hash_value
    # http://localhost:3000/answers/hash_value?hash_key=D2

    vending_machine = {
      'D0' => "Pop Tarts - Smores",
      'D2' => "Pop Tarts - Strawberry",
      'D4' => "Pop Tarts - Strawberry",
      'D6' => "Rice Crispy Treats",
      'D8' => "Reese's Pieces"
    }

    given_param = params[:hash_key]

    render plain: vending_machine[given_param] || "Nothing found here"

    # Note: the || syntax is a neat ruby trick that allows us to do
    # default values
    #
    # || (double pipe) is the OR operator
    # when ruby evaluates '||' it returns the first thing
    # that isn't falsy (nil or false)
    #
    # eg.
    # nil || nil => nil
    # 1 || nil => 1
    # nil || 1 => 1
  end
end
