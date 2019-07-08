class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to root_url
    else
      render :new
    end
  end

  private

  def game_params
    params.require(:game).permit(:number_of_players)
  end
end
