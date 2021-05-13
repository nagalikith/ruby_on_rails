class CommercialsController < ApplicationController
  before_action :set_commercial, only: [:show, :edit, :update, :destroy]

  # GET /commercials
  def index
    @commercials = Commercial.all
  end

  # GET /commercials/1
  def show
  end

  # GET /commercials/new
  def new
    render layout: false
  end

  # GET /commercials/1/edit
  def edit
    render layout: false
  end

  # POST /commercials
  def create
    #puts commercial_params[:name]
    @donor = Donor.new(name: commercial_params[:name], email: commercial_params[:email], 
                        contactnumber: commercial_params[:contactnumber], totaldonation: commercial_params[:totaldonation])
    
    if @donor.save
      date = Date.new commercial_params["dateawarded(1i)"].to_i, commercial_params["dateawarded(2i)"].to_i,
                       commercial_params["dateawarded(3i)"].to_i
      @commercial = Commercial.new(dateawarded: date, donor_id: @donor.id)
      if @commercial.save

        @prospectives = ProspectiveDonor.all
        @commercials = Commercial.all
        @trusts = Trust.all
        @donors = Donor.where("id NOT IN (SELECT DISTINCT(donor_id) FROM commercials) AND id NOT IN (SELECT DISTINCT(donor_id) FROM trusts)")

        render 'donors/new_donor_success'
      else
        render 'donors/new_donor_failure'
      end
    else

      render 'donors/new_donor_failure'
    end
  end

  # PATCH/PUT /commercials/1
  def update
    date = Date.new commercial_params["dateawarded(1i)"].to_i, commercial_params["dateawarded(2i)"].to_i,
                    commercial_params["dateawarded(3i)"].to_i
    @prospectives = ProspectiveDonor.all
    @commercials = Commercial.all
    @trusts = Trust.all
    @donors = Donor.where("id NOT IN (SELECT DISTINCT(donor_id) FROM commercials) AND id NOT IN (SELECT DISTINCT(donor_id) FROM trusts)")

    if @commercial.update(dateawarded: date)
      @commercials = Commercial.all
      render 'donors/new_donor_success'
    else
      render 'donors/new_donor_failure'
    end
  end

  # DELETE /commercials/1
  def destroy
    @commercial.destroy
    Donor.find(@commercial.donor_id).destroy
    redirect_to donors_url, notice: 'Commercial/Contract donor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commercial
      @commercial = Commercial.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def commercial_params
      params.require(:commercial).permit(:name, :contactnumber, :email, :totaldonation, :dateawarded)
    end
end
