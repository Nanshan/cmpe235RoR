class AdvertisementsController < ApplicationController
  def new
    @advert = Advertisement.new
  end

  def show
    @advert = Advertisement.find(params[:id])
  end

  def create
    @advert = Advertisement.new(params[:advertisement])

    @advert.save
    redirect_to @advert
  end

  def index
    @adverts = Advertisement.all
  end
end
