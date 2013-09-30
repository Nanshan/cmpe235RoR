class AdvertisementsController < ApplicationController
  def new
    @advert = Advertisement.new
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
