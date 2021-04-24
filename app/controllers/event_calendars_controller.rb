class EventCalendarsController < ApplicationController
  before_action :set_event_calendar, only: [:show, :edit, :update, :destroy]

  # GET /event_calendars
  def index
    if current_user.manager
      @event_calendars = EventCalendar.all
      @events = Event.all
      #Ensures the manager can see all the events on the events calander
    else
      @event_calendars = EventCalendar.all
      @events = Event.where(club_id: current_user.club_id)
      #Normal users can see the event calandar, but only the events linked to their club ID.
    end
  end

  # GET /event_calendars/1
  def show
  end

  # GET /event_calendars/new
  def new
    @event_calendar = EventCalendar.new
  end

  # GET /event_calendars/1/edit
  def edit
  end

  # POST /event_calendars
  def create
    @event_calendar = EventCalendar.new(event_calendar_params)

    if @event_calendar.save
      redirect_to @event_calendar, notice: 'Event calendar was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /event_calendars/1
  def update
    if @event_calendar.update(event_calendar_params)
      redirect_to @event_calendar, notice: 'Event calendar was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /event_calendars/1
  def destroy
    @event_calendar.destroy
    redirect_to event_calendars_url, notice: 'Event calendar was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_calendar
      @event_calendar = EventCalendar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_calendar_params
      params.fetch(:event_calendar, {})
    end
end
