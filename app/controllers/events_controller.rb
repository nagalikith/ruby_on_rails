class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  def index
    if current_user.manager
      @events = Event.all
    else
      @events = Event.where(club_id: current_user.club_id)
    end
    @volunteers = Volunteer.all
  end

  # GET /events/1
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
    render layout: false
  end

  # GET /events/1/edit
  def edit
    @club = Club.where(club_id: current_user.club_id)
    render layout: false
  end

  # POST /events
  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to @event, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      redirect_to @event, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  # POST /events/search
  def search
    @events = Event.where(name: params[:search][:clubname])
  render :index
  end
  
  def add
    @event_volunteers = EventVolunteer.new
    @volunteers = Volunteer.all
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:name, :date, :comment, :club_id, :start_time, :end_time)
    end
end
