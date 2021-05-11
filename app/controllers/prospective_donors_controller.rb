class ProspectiveDonorsController < ApplicationController
  before_action :set_prospective_donor, only: [:show, :edit, :update, :destroy]

  # GET /prospective_donors
  def index
    @prospective_donors = ProspectiveDonor.all
  end

  # GET /prospective_donors/1
  def show
  end

  # GET /prospective_donors/new
  def new
    render layout: false
  end

  # GET /prospective_donors/1/edit
  def edit
  end

  # POST /prospective_donors
  def create
    @prospective_donor = ProspectiveDonor.new(prospective_donor_params)

    if @prospective_donor.save
      @prospectives = ProspectiveDonor.all
      @commercials = Commercial.all
      @trusts = Trust.all
      @donors = Donor.where("id NOT IN (SELECT DISTINCT(donor_id) FROM commercials) AND id NOT IN (SELECT DISTINCT(donor_id) FROM trusts)")
      render 'donors/new_donor_success'
    else
      render 'donors/new_donor_failure'
    end
  end

  # PATCH/PUT /prospective_donors/1
  def update
    if @prospective_donor.update(prospective_donor_params)
      redirect_to donors_url, notice: 'Prospective donor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /prospective_donors/1
  def destroy
    @prospective_donor.destroy
    redirect_to donors_url, notice: 'Prospective donor was successfully destroyed.'
  end

  def upgrade_donor
    puts "called"
    puts params[:prospective_donor_id]
    ProspectiveDonor.new.makeReal(params[:prospective_donor_id])
    redirect_to donors_url, notice: 'Prospective donor was changed to full donor'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prospective_donor
      @prospective_donor = ProspectiveDonor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prospective_donor_params
      params.require(:prospective_donor).permit(:name, :type, :contactnumber, :internalcontactlink, :email)
    end
end
