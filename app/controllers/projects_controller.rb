class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects, include: params[:include]
  end

  def show
    @project = Project.find(params[:id])
    render json: @project, include: params[:include]
  end

end
