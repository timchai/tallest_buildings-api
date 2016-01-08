class BuildingsController < ApplicationController

  def index
    @building = Building.all
  end

  def create
    @building = Building.new(location: params[:location], height: params[:height])
    if @building.save
      render json: @building
    else
      render json: {errors: @building.errors.full_messages}, status: 422
    end
  end
  
=begin  def show
    @building = Building.find(params[:id])
    render json: @building
  end

  def index
    @buildings = Building.all
  end

  def create
    @building = Building.create(location: params[:location], height: params[:height])
    render :show
  end

  def update
    @building = Building.find(params[:id])
    @building.update(location: params[:location], height: params[:height])
    render :show
  end

  def destroy
    @building = Building.find(params[:id]).destroy
    respond_to do |format|
      format.html {redirect_to "/buildings"}
      format.json {render json: "Building gone"}
    end
  end
=end
end
