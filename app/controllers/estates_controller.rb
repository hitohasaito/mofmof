class EstatesController < ApplicationController
before_action :set_estate_params,only:[:show]
  def index
  end
  def new
    @estate = Estate.new
    @estate.build_station
  end
  def create
    if Estate.create(estate_params)
      redirect_to estates_path, notice:'登録できました'
    else
      render "new"
    end
  end
  def index
  @estate = Estate.all
  end
  def show

  end


  private

  def estate_params
    params.require(:estate).permit(:name,:fee,:adress,:age,:note,station_attributes:[:station1,:line1,:walking_minutes1,:station2,:line2,:walking_minutes2])
  end
  def set_estate_params
      @estates = Estate.find(params[:id])
  end
  #def set_station_params
    #@stations = Estate.find(params[:id])
  #end
end
