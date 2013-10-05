class MapController < ApplicationController
skip_before_action :verify_authenticity_token

  def index
    @events = MapEvent.all
  end
end
