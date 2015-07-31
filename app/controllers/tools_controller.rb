class ToolsController < ApplicationController

  def index
    @tools = Tool.all
    render json: @tools, include: params[:include]
  end

end
