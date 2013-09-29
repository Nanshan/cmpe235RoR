class AdvertisementsController < ApplicationController
  def index
    @adverts = Advertisement.all
  end
end
