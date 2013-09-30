class EventsController < ApplicationController
skip_before_action :verify_authenticity_token

  def show
    @event = Event.find(params[:id])
  end

  def impression
    @event = ImpressionEvent.new(params[:event])
    @event.save
  end

  def click
    @event = ClickEvent.new(params[:event])
    @event.save
  end

  def clickthru
    @event = ClickThroughEvent.new(params[:event])
    @event.save
  end

  def sms
    @event = SMSEvent.new(params[:event])
    @event.save
  end

  def map
    @event = MapEvent.new(params[:event])
    @event.save
  end

  def call
    @event = CallEvent.new(params[:event])
    @event.save
  end

  def index
    @events = Event.all
  end
end
