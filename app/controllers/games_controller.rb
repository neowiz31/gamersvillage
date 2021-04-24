class GamesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]  
  def index
    @games = Game.order("created_at DESC")
    @comments = Comment.order("created_at DESC")
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
    @comment = Comment.new
    @comments = @game.comments.includes(:user)
    @comments = @game.comments.all.order(id: "DESC")

  end

  private

  def game_params
    params.require(:game).permit(:image, :game_title, :hardware_id, :game_genre_id, :official_url)
  end

end
