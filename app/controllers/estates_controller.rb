class EstatesController < ApplicationController
  def index
  end
  def new
    @estate = Estate.new
    @station = Station.new
  end
end
