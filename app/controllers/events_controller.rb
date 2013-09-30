class EventsController < ApplicationController
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
