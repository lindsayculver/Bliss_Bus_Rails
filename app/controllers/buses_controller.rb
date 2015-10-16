class BusesController < ApplicationController
  def index
    @buses = Bus.all
    render :index
  end

  def show
    @bus = Bus.find(params[:id])
    render :show
  end

  def new
    @bus = Bus.new
    render :new
  end

  def create
    @bus = Bus.new(bus_params)
    if @bus.save
      redirect_to buses_path
    else
      render :new
  end
end

  private
    def bus_params
      params.require(:bus).permit(:name)
    end

  end
