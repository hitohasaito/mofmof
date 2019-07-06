class EstatesController < ApplicationController
  def index
  end
  def new
    @estate = Estate.new
  end
end
