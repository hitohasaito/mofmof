class EstatesController < ApplicationController
  def index
  end
  def new
    @estates = Estate.new
    @stations = Station.new
  end
  def create
    @estates = Estate.new(estate_params)
    @stations = Station.new(station_params)
    if @estates.save && @stations.save
      redirect_to estates_path
    else
      render "new"
    end
  end
  def index
    @estates = Estate.all
  end


  private

  def estate_params
    params.require(:estate).permit(:name,:fee,:adress,:age,:note)
  end
  def station_params
    params.require(:station).permit(:station1,:line1,:walking_minutes1,:station2,:line2,:walking_minutes2)
  end
end
