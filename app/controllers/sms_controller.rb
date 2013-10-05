class SmsController < ApplicationController
skip_before_action :verify_authenticity_token

  def index
    @events = SMSEvent.all
  end
end
