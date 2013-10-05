class CallController < ApplicationController
skip_before_action :verify_authenticity_token

  def index
    @events = CallEvent.all
  end
end
