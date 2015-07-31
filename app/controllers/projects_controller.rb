class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    render json: @projects, include: params[:include]
  end

end
