class PlayersController < ApplicationController
  def show
    @game = Game.find(params[:game_id])
    @player = Player.find(params[:id])
  end
end
