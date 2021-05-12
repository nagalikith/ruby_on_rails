class DonorsController < ApplicationController
  before_action :set_donor, only: [:show, :edit, :update, :destroy]

  # GET /donors
  def index
    @prospectives = ProspectiveDonor.all
    @commercials = Commercial.all
    @trusts = Trust.all
    @donors = Donor.where("id NOT IN (SELECT DISTINCT(donor_id) FROM commercials) AND id NOT IN (SELECT DISTINCT(donor_id) FROM trusts)")
  end

  # GET /donors/1
  def show
  end

  # GET /donors/new
  def new
    render layout: false
  end

  # GET /donors/1/edit
  def edit
    render layout: false
  end

  # POST /donors
  def create
    @donor = Donor.new(donor_params)

    if @donor.save
      @prospectives = ProspectiveDonor.all
      @commercials = Commercial.all
      @trusts = Trust.all
      @donors = Donor.where("id NOT IN (SELECT DISTINCT(donor_id) FROM commercials) AND id NOT IN (SELECT DISTINCT(donor_id) FROM trusts)")
      render 'new_donor_success'
    else
      render 'new_donor_failure'
    end
  end

  # PATCH/PUT /donors/1
  def update
    @prospectives = ProspectiveDonor.all
    @commercials = Commercial.all
    @trusts = Trust.all
    if @donor.update(donor_params)

      @donors = Donor.where("id NOT IN (SELECT DISTINCT(donor_id) FROM commercials) AND id NOT IN (SELECT DISTINCT(donor_id) FROM trusts)")
      render 'new_donor_success'
    else
      @donors = Donor.where("id NOT IN (SELECT DISTINCT(donor_id) FROM commercials) AND id NOT IN (SELECT DISTINCT(donor_id) FROM trusts)")
      render 'new_donor_failure'
    end
  end

  # DELETE /donors/1
  def destroy
    @donor.destroy
    redirect_to donors_url, notice: 'Donor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donor
      @donor = Donor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def donor_params
      params.require(:donor).permit(:name, :type, :contactnumber, :email, :totaldonation)
    end
end
