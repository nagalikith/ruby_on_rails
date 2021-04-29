class MeetingTypesController < ApplicationController
  before_action :set_meeting_type, only: [:show, :edit, :update, :destroy, :search]

  # GET /meeting_types
  def index
    @meeting_types = MeetingType.all
  end

  # GET /meeting_types/1
  def show
  end

  # GET /meeting_types/search
  def search
    @meeting_types = MeetingType.all
    
    alert 'yes'
    @meeting_types = @meeting_types.where(club_infos_id: params[:club_infos_id]) if params[:club_infos_id].present?
    render :index

  end

  # GET /meeting_types/new
  def new
    @meeting_type = MeetingType.new
  end

  # GET /meeting_types/1/edit
  def edit
  end

  

  # POST /meeting_types
  def create
    @meeting_type = MeetingType.new(meeting_type_params)

    if @meeting_type.save
      @meeting_types = MeetingType.all.where(club_infos_id: params[:search][:club_infos_id])
      render 'new_meeting_success'
      #redirect_to @meeting_type, notice: 'Meeting type was successfully created.'
    else
      render 'new_meeting_failure'
      #render :new
    end
  end


  # PATCH/PUT /meeting_types/1
  def update
    if @meeting_type.update(meeting_type_params)
      redirect_to @meeting_type, notice: 'Meeting type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /meeting_types/1
  def destroy
    @meeting_type.destroy
    redirect_to meeting_types_url, notice: 'Meeting type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meeting_type
      @meeting_type = MeetingType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meeting_type_params
      params.require(:meeting_type).permit(:day, :time, :sessiontype, :club_infos_id)
    end
end
