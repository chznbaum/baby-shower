class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  layout 'landing'

  access all: [:show, :index], user: { except: [:destroy, :new, :create, :update, :edit]}, mom: :all, helper: :all, admin: :all

  # GET /events
  def index
    @events = Event.page(params[:page]).per(3)
    @page_title = "Events"
  end

  # GET /events/1
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    @page_title = "Create a New Event"
  end

  # GET /events/1/edit
  def edit
    @page_title = "Editing #{@event.name}"
  end

  # POST /events
  def create
    @event = Event.build(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /events/1
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Event was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :description, :event_datetime, :rsvp_datetime)
    end
end