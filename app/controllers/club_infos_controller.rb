class ClubInfosController < ApplicationController
  before_action :set_club_info, only: [:show, :edit, :update, :destroy]

  # GET /club_infos
  def index
    @club_infos = ClubInfo.all
  end

  # GET /club_infos/1
  def show
  end

  # GET /club_infos/new
  def new
    @club_info = ClubInfo.new
  end

  # GET /club_infos/1/edit
  def edit
  end

  # POST /club_infos
  def create
    @club_info = ClubInfo.new(club_info_params)

    if @club_info.save
      redirect_to @club_info, notice: 'Club info was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /club_infos/1
  def update
    if @club_info.update(club_info_params)
      redirect_to @club_info, notice: 'Club info was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /club_infos/1
  def destroy
    @club_info.destroy
    redirect_to club_infos_url, notice: 'Club info was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_club_info
      @club_info = ClubInfo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def club_info_params
      params.require(:club_info).permit(:date, :males, :females, :lowerage, :upperage, :disability, :ethnicity, :depravation, :drugsandabs, :neets, :volnum, :volhours, :volachievetraining)
    end
end
