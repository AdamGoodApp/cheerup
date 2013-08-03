class CheerUpsController < ApplicationController
  # GET /cheer_ups
  # GET /cheer_ups.json

  before_filter :authenticate_user!


  def index
    @cheer_ups = CheerUp.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cheer_ups }
    end
  end

  # GET /cheer_ups/1
  # GET /cheer_ups/1.json
  def show
    @cheer_up = CheerUp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cheer_up }
    end
  end

  # GET /cheer_ups/new
  # GET /cheer_ups/new.json
  def new
    @cheer_up = CheerUp.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cheer_up }
    end
  end

  # GET /cheer_ups/1/edit
  def edit
    @cheer_up = CheerUp.find(params[:id])
  end

  # POST /cheer_ups
  # POST /cheer_ups.json
  def create
    @cheer_up = CheerUp.new(params[:cheer_up])

    respond_to do |format|
      if @cheer_up.save
        format.html { redirect_to @cheer_up, notice: 'Cheer up was successfully created.' }
        format.json { render json: @cheer_up, status: :created, location: @cheer_up }
      else
        format.html { render action: "new" }
        format.json { render json: @cheer_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cheer_ups/1
  # PUT /cheer_ups/1.json
  def update
    @cheer_up = CheerUp.find(params[:id])

    respond_to do |format|
      if @cheer_up.update_attributes(params[:cheer_up])
        format.html { redirect_to @cheer_up, notice: 'Cheer up was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cheer_up.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cheer_ups/1
  # DELETE /cheer_ups/1.json
  def destroy
    @cheer_up = CheerUp.find(params[:id])
    @cheer_up.destroy

    respond_to do |format|
      format.html { redirect_to cheer_ups_url }
      format.json { head :no_content }
    end
  end
end
