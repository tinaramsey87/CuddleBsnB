class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new(city_params)
    if @city.save
      flash[:notice] = "Your city was successfully added"
      redirect_to cities_path
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @city = City.find(params[:id])
    @city.destroy
    flash[:alert] = "They are ended. They will not rebuild."
    redirect_to cities_path
  end

  private

    def city_params
      params.require(:city).permit(:city, :state)
    end
end
