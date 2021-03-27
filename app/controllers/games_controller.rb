class GamesController < ApplicationController
  def index
    @games = Game.order("created_at DESC")
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to root_path
    else
      render :new
    end
  end



end
