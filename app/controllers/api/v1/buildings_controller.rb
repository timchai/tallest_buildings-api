class Api::V1::BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
    @building = Building.find(params[:id])
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
      format.json {render json: "Building gone"}
  end

end
