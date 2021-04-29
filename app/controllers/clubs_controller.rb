class ClubsController < ApplicationController
  before_action :set_club, only: [:show, :edit, :update, :destroy]
  
  
  # authorize_resource

  # GET /clubs
  def inde
    #not showing the admin as a club 
    @clubs = Club.all.where.not(id: '1')
  end

  # GET /clubs/1
  def show
    #loading the events associated with the 
    @events = Event.all.where(club_id: @club.id)
  end

  #layout false for ajax modal

  # GET /clubs/new
  def new
    @club = Club.new
    render layout: false
  end

  # GET /clubs/1/edit
  def edit
    render layout: false
  end

  # POST /clubs
  def create
    @club = Club.new(club_params)

    if @club.save
      redirect_to @club, notice: 'Club was successfully created.'
    else
      render :new
    end
  end

  # GET /clubs/1/hours
  def hours
  end

  # PATCH/PUT /clubs/1
  def update
    if @club.update(club_params)
      render 'update_success'
    else
      render 'update_failure'
    end
  end

  # DELETE /clubs/1
  def destroy
    @club.destroy
    redirect_to clubs_url, notice: 'Club was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club
      @club = Club.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def club_params
      params.require(:club).permit(:name, :postcode, :contactnumber, :paymentduedate)
    end
end
