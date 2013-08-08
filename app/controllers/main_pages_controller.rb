class MainPagesController < ApplicationController

  def home
    @cheer_ups = CheerUp.all
    @user = current_user
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cheer_ups }
    end
  end

  def new
    @Cheer_ups = CheerUp.new
  end

  def launch
  end

  def trending
    @cheer_ups = CheerUp.order("rating DESC").all
    @user = current_user
    render :home
  end


end
