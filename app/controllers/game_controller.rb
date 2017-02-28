class GameController < ApplicationController
  def mainPage
  	@post_type_eq = 1
  	@array = [1, 2, 3, 4, 5]
  	@player = Player.new(:kingdom => "The Roman Empire", :king => "Ceaser", :location_id => 2)
  end
  def gameSettings
  	@id = params["id"].to_i
  	@page = params[:page]
  end
end
