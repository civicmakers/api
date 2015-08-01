class ToolsController < ApplicationController

  def index
    @tools = Tool.all
    render json: @tools, include: params[:include]
  end

  def show
    @tool = Tool.find(params[:id])
    render json: @tool, include: params[:include]
  end

end
