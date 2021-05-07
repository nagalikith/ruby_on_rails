class AdminEventsController < ApplicationController
  before_action :set_admin_event, only: [:show, :edit, :update, :destroy]
  before_action :get_event
  # GET /admin_events
  def index
      @admin_events = AdminEvent.all
  end

  # GET /admin_events/1
  def show
  end

  # GET /admin_events/new
  def new
    @admin_event = AdminEvent.new
  end

  # GET /admin_events/1/edit
  def edit
  end

  # POST /admin_events
  def create
    @admin_event = AdminEvent.new(admin_event_params)

    if @admin_event.save
      redirect_to event_admin_events_path, notice: 'Admin event was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /admin_events/1
  def update
    if @admin_event.update(admin_event_params)
      redirect_to @admin_event, notice: 'Admin event was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /admin_events/1
  def destroy
    @admin_event.destroy
    redirect_to admin_events_url, notice: 'Admin event was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_event
      @admin_event = AdminEvent.find(params[:id])
    end

    def get_event
      @event = Event.find(params[:event_id])
    end



    # Only allow a trusted parameter "white list" through.
    def admin_event_params
      # params.fetch(:admin_event, {club_id,event_id})
      params.require(:admin_event).permit(:club_id, :event_id)
    end
end
