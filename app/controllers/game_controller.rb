class GameController < ApplicationController
  def main_page
    render({ :template => "game_templates/main_page" })
  end

  def rock
    @random_move = ["rock", "paper", "scissors"].sample

    render({ :template => "game_templates/play_rock" })
  end
end
