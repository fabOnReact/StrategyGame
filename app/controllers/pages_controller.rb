class PagesController < ApplicationController
  
  layout "application"

  def index
  	@pages = Page.all
  end

  def new
  	@page = Page.new
  end

  def create
	@page = Page.new(page_params)
    new_subject = Subject.find(params[:id])
    @page.subject = new_subject

    if @page.save
      redirect_to action: "index"
    else
      render("new")
    end
  end

  def show
  	@page = Page.find(params[:id])
  end

  def edit
 	@page = Page.find(params[:id])
  end

  def update
  	@page = Page.find(params[:id])

  	if @page.update_attributes(page_params)
  		flash[:notice] = "Page #{@page.name} edited successfully"
  		redirect_to action: "index"
  	else
  		render("edit")
  	end
  end

  def delete
  	@page = Page.find(params[:id])
  end

  def destroy
  	if @page = Page.find(params[:id]).destroy
  		flash[:notice] = "Page #{@page.name} deleted successfully"
  		redirect_to action: "index"
  	else
  		flash[:alert] = "Page #{@page.name} was not deleted, an Error accurred"
  		render("delete")

  	end

  end

  private
    def page_params
      params.require(:page).permit(:name, :position, :visible)
    end
end
