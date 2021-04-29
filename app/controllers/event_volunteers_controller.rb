class EventVolunteersController < ApplicationController
  before_action :get_event
  before_action :set_event_volunteer, only: [:show, :edit, :update, :destroy]
 
  helper_method :get_volunteer
  # GET /event_volunteers
  def index
    @event_volunteers = EventVolunteer.where(event_id: @event.id)
    @volunteers = Volunteer.all
  end

  # GET /event_volunteers/1
  def show
  end

  # GET /event_volunteers/new
  def new
    @event_volunteer = EventVolunteer.new
  end

  # GET /event_volunteers/1/edit
  def edit
  end
  
  # POST /event_volunteers
  def create
    @event_volunteer = EventVolunteer.new(event_volunteer_params)

    if @event_volunteer.save
      redirect_to event_event_volunteers_path, notice: 'Event volunteer was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /event_volunteers/1
  def update
    if @event_volunteer.update(event_volunteer_params)
      redirect_to @event_volunteer, notice: 'Event volunteer was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /event_volunteers/1
  def destroy
    @event_volunteer.destroy
    redirect_to event_volunteers_url, notice: 'Event volunteer was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_volunteer
      @event_volunteer = EventVolunteer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_volunteer_params
      # params.fetch(:event_volunteer, {})
      params.require(:event_volunteer).permit(:volunteer_id, :event_id)
    end

    def get_event
      @event = Event.find(params[:event_id])
    end

    def get_volunteer(event_volunteer)
      @volunteer = Volunteer.find(event_volunteer.volunteer_id)
    end
end
