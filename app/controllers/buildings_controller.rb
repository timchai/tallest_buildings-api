class BuildingsController < ApplicationController

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
