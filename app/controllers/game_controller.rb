class GameController < ApplicationController
  def mainPage
  	@array = [1, 2, 3, 4, 5]
  end
  def gameSettings
  	@id = params["id"].to_i
  	@page = params[:page]
  end
end
