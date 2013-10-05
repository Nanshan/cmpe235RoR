require 'time'

class EventsController < ApplicationController
skip_before_action :verify_authenticity_token

  def show
    @event = Event.find(params[:id])
  end

  def impression
    @advert = Advertisement.find_by name: params[:ad_name]
    @event = ImpressionEvent.create(user_location: params[:user_location], user_phone_id: params[:user_phone_id])
    @advert.events << @event
    @advert.save
  end

  def click
    @advert = Advertisement.find_by name: params[:ad_name]
    @event = ClickEvent.create(user_location: params[:user_location], user_phone_id: params[:user_phone_id])
    @advert.events << @event
    @advert.save
  end

  def clickthru
    @advert = Advertisement.find_by name: params[:ad_name]
    @event = ClickThroughEvent.create(user_location: params[:user_location], user_phone_id: params[:user_phone_id])
    @advert.events << @event
    @advert.save
  end

  def sms
    @advert = Advertisement.find_by name: params[:ad_name]
    @event = SMSEvent.create(user_location: params[:user_location], user_phone_id: params[:user_phone_id], sender: params[:sender], receiver: params[:receiver], message: params[:message])
    @advert.events << @event
    @advert.save
  end

  def map
    @advert = Advertisement.find_by name: params[:ad_name]
    @event = MapEvent.create(user_location: params[:user_location], user_phone_id: params[:user_phone_id], map_location: params[:address])
    @advert.events << @event
    @advert.save
  end

  def call
    @advert = Advertisement.find_by name: params[:ad_name]
    @event = CallEvent.create(user_location: params[:user_location], user_phone_id: params[:user_phone_id], sender: params[:sender], receiver: params[:receiver])
    @advert.events << @event
    @advert.save
  end

  def index
    @events = Event.all
  end
end
