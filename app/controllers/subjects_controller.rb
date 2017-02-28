class SubjectsController < ApplicationController

  layout "application"

  before_action :confirm_logged_in
  
  def index
    @subjects = Subject.all 
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new(:name => "Default")
  end

  def create
    @subject = Subject.new(subject_params)

    if @subject.save
      flash[:notice] = "Subject #{@subject.name} created successfully"
      redirect_to action: "index"
    else
      render("new")
    end

  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def update
    @subject = Subject.find(params[:id])

    if @subject.update_attributes(subject_params)
      flash[:notice] = "Subject #{@subject.name} edited successfully"
      redirect_to action: "show"
    else
      render("edit")
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end

  def destroy
    @subject = Subject.find(params[:id])

    if @subject.destroy
      flash[:notice] = "Subject #{@subject.name} deleted successfully"
      redirect_to action: "index" 
    else 
      flash[:alert] = "Subject #{@subject.name} was not deleted, please try again"
      render("delete")
    end
  end

  private 
    def subject_params
      params.require(:subject).permit(:name, :position, :visible)
    end
end
