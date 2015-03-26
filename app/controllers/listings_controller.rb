class ListingsController < ApplicationController

  def new
    @city = City.find(params[:city_id])
    @listing = @city.listings.new
  end

  def create
    @city = City.find(params[:city_id])
    @listing = @city.listings.new(listing_params)
    if @listing.save
      flash[:notice] = "Listing successfully created."
      redirect_to city_path(@city)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
    def listing_params
      params.require(:listing).permit(:name, :zip, :price)
    end

end
