class GameController < ApplicationController
  def main_page
    render({ :template => "game_templates/main_page" })
  end

  def rock
  plays = ["rock", "paper", "scissors"]

  user_play = "rock"
  computer_play = plays.sample

  if user_play == computer_play
    outcome = "We tied!"
  elsif computer_play == "paper"
    outcome = "We lost!"
  elsif computer_play == "scissors"
    outcome = "We won!"
  end


  outcome = "#{outcome}"

  @user = user_play
  @computer = computer_play
  @result = outcome

  render({ :template => "game_templates/play_rock" })
  end
end
