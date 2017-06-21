class GamesController < ApplicationController

  OPTIONS = [ 'rock', 'paper', 'scissors' ]

  def rock_paper_scissors
    choice = params[:choice]

    if !choice
      output = help_message
    elsif !valid_choice?(choice)
      output = ["Your input of #{choice} is not an option\n\n"]
      output += help_message
    else
      output = play_choice_and_get_output(choice)
    end

    render plain: output.join("\n")
  end

  private

  def valid_choice?(choice)
    OPTIONS.include?(choice)
  end

  def help_message
    [
      "Please choose rock, paper, or scissors:",
      "Use URL query params to input your choice:",
      "\nExample:",
      "http://localhost:3000/rock_paper_scissors?choice=rock"
    ]
  end

  def pick_computer_choice
    OPTIONS.sample
  end

  def tie_message(choice)
    [
      "You and the computer both chose #{choice}!",
      "It's a TIE!"
    ]
  end

  def play_choice_and_get_output(player_choice)
    computer_choice = pick_computer_choice

    if computer_choice == player_choice
      return tie_message(player_choice)
    end

    output = []
    output << "Computer chose #{computer_choice}"
    output << "You chose #{player_choice}"

    if computer_choice == 'rock' && player_choice == 'paper'
      output << "You win!"
    end

    if computer_choice == 'rock' && player_choice == 'scissors'
      output << "Computer wins!"
    end

    if computer_choice == 'paper' && player_choice == 'scissors'
      output << "You win!"
    end

    if computer_choice == 'paper' && player_choice == 'rock'
      output << "Computer wins!"
    end

    if computer_choice == 'scissors' && player_choice == 'rock'
      output << "You win!"
    end

    if computer_choice == 'scissors' && player_choice == 'paper'
      output << "Computer wins!"
    end

    return output
  end
end
