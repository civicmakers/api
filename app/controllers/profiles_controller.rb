class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
    render json: @profiles, include: params[:include]
  end

end
