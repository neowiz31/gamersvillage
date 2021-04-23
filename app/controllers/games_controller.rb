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

  def show
    @game = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:image, :game_title, :hardware_id, :game_genre_id, :offcial_url)
  end

end
