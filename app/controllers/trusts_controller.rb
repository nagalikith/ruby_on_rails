class TrustsController < ApplicationController
  before_action :set_trust, only: [:show, :edit, :update, :destroy]

  # GET /trusts
  def index
    @trusts = Trust.all
  end

  # GET /trusts/1
  def show
  end

  # GET /trusts/new
  def new
    render layout: false
  end

  # GET /trusts/1/edit
  def edit
  end

  # POST /trusts
  def create

    @donor = Donor.new(name: trust_params[:name], email: trust_params[:email], 
                        contactnumber: trust_params[:contactnumber], totaldonation: trust_params[:totaldonation])
    
    if @donor.save
      datesub = Date.new trust_params["datesubmitted(1i)"].to_i, trust_params["datesubmitted(2i)"].to_i,
                      trust_params["datesubmitted(3i)"].to_i
      datethank = Date.new trust_params["thankdate(1i)"].to_i, trust_params["thankdate(2i)"].to_i,
                      trust_params["thankdate(3i)"].to_i
      @trust = Trust.new(datesubmitted: datesub, thankdate: datethank, donor_id: @donor.id)
      if @trust.save
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

  # PATCH/PUT /trusts/1
  def update
    datesub = Date.new trust_params["datesubmitted(1i)"].to_i, trust_params["datesubmitted(2i)"].to_i,
                        trust_params["datesubmitted(3i)"].to_i

    datethank = Date.new trust_params["thankdate(1i)"].to_i, trust_params["thankdate(2i)"].to_i,
                        trust_params["thankdate(3i)"].to_i

    if @trust.update(datesubmitted: datesub, thankdate: datethank)
      redirect_to donors_path, notice: 'Trust/Foundation donor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /trusts/1
  def destroy
    @trust.destroy
    Donor.find(@commercial.donor_id).destroy
    redirect_to donors_url, notice: 'Trust/Foundation donor was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trust
      @trust = Trust.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trust_params
      params.require(:trust).permit(:name, :contactnumber, :email, :totaldonation, :thankdate, :datesubmitted)
    end
end
