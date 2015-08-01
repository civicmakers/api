class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
    render json: @profiles, include: params[:include]
  end

  def show
    @profile = Profile.find(params[:id])
    render json: @profile, include: params[:include]
  end

end
