class GameController < ApplicationController

  def index

    @games = Game.all

    respond_to do |format|
      format.html
      format.json do
        render :json => {message: "Welcome to the index page"}
      end
    end
  end

  def new
    respond_to do |format|
      format.html
      format.json do
        render :json => {message: "Welcome to the new page"}
      end
    end
  end

  def show
    id = params[:id]

    @game = Game.find(id)

    respond_to do |format|
      format.html
      format.json do
        render :json => {message: "This is the show page for, #{@game.game_name}"}
      end
    end
  end

  def edit
    id = params[:id]

    @game = Game.find(id)

    respond_to do |format|
      format.html
      format.json do
        render :json => {message: "This is the edit page for, #{@game.name}"}
      end
    end
  end
end
