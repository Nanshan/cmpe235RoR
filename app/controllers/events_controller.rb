class EventsController < ApplicationController
skip_before_action :verify_authenticity_token

  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(params[:event])
 
    @event.save
    redirect_to @event
  end

  def index
    @events = Event.all
  end
end
