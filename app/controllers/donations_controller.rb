class DonationsController < ApplicationController
  before_action :set_donation, only: [:show, :edit, :update, :destroy]

  # GET /donations
  def index
    @donations = Donation.all
  end

  # GET /donations/1
  def show
  end

  # GET /donations/new
  def new
    render layout: false
  end

  # GET /donations/1/edit
  def edit
  end

  # POST /donations
  def create
    #@donation = Donation.new(donation_params)

    date = donation_params["date_from(3i)"] + "/" + donation_params["date_from(2i)"] + "/" + donation_params["date_from(1i)"]
    restrict = donation_params[:restricted]
    if restrict == ""
      restrict = "None"
    end
    Donation.new.submitDonation(donation_params[:donor_id], donation_params[:amount], donation_params[:recurring], 
                                restrict, date)
    @donations = Donation.all
    render 'new_donation_success'

  end

  # PATCH/PUT /donations/1
  def update
    if @donation.update(donation_params)
      redirect_to @donation, notice: 'Donation was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /donations/1
  def destroy
    Donation.new.deleteDonation(@donation.id)
    redirect_to donations_url, notice: 'Donation was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation
      @donation = Donation.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def donation_params
      params.require(:donation).permit(:donor_id, :amount, :date, :method, :recurring, :restricted)
    end
end
