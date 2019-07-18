class EstatesController < ApplicationController
before_action :set_estate_params,only:[:show,:edit,:update,:destroy]

  def new
    @estate = Estate.new
    @estate.build_station
  end
  def create
    @estate = Estate.new(estate_params)
    if @estate.save
      redirect_to estates_path
    else
      render "new"
    end
  end
  def index
  @estates = Estate.all
  end
  def show
  end
  def edit
  end
  def update
    if @estate.update(estate_params)
      flash[:notice] = "編集しました!"
      redirect_to estates_path
    else
      render "edit"
    end
  end
  def destroy
    @estate.destroy
    redirect_to estates_path, notice:"物件情報を削除しました"
  end


  private

  def estate_params
    params.require(:estate).permit(:name,:fee,:adress,:age,:note,station_attributes:[:station1,:line1,:walking_minutes1,:station2,:line2,:walking_minutes2])
  end
  def set_estate_params
      @estate = Estate.find(params[:id])
  end
end
