class MainPagesController < ApplicationController

  def home
    @cheer_ups = CheerUp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cheer_ups }
    end
  end

  def launch
  end

end
