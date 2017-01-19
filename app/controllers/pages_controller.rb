class PagesController < ApplicationController
  def index
  	@pages = Page.all
  end

  def new
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end
end
