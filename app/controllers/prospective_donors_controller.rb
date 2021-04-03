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
    @prospective_donor = ProspectiveDonor.new
  end

  # GET /prospective_donors/1/edit
  def edit
  end

  # POST /prospective_donors
  def create
    @prospective_donor = ProspectiveDonor.new(prospective_donor_params)

    if @prospective_donor.save
      redirect_to @prospective_donor, notice: 'Prospective donor was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /prospective_donors/1
  def update
    if @prospective_donor.update(prospective_donor_params)
      redirect_to @prospective_donor, notice: 'Prospective donor was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /prospective_donors/1
  def destroy
    @prospective_donor.destroy
    redirect_to prospective_donors_url, notice: 'Prospective donor was successfully destroyed.'
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
