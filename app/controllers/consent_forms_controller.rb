class ConsentFormsController < ApplicationController
  before_action :set_consent_form, only: [:show, :edit, :update, :destroy]

  # GET /consent_forms
  def index
    @consent_forms = ConsentForm.all
  end

  # GET /consent_forms/1
  def show
  end

  # GET /consent_forms/new
  def new
    @consent_form = ConsentForm.new
  end

  # GET /consent_forms/1/edit
  def edit
    render layout: false
  end

  # POST /consent_forms
  def create
    @consent_form = ConsentForm.new(consent_form_params)

    if @consent_form.save
      redirect_to @consent_form, notice: 'Consent form was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /consent_forms/1
  def update
    if @consent_form.update(consent_form_params)
      @consent_forms = ConsentForm.all
      render 'update_success'
    else
      render 'update_failure'
    end
  end

  # DELETE /consent_forms/1
  def destroy
    @consent_form.destroy
    redirect_to consent_forms_url, notice: 'Consent form was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consent_form
      @consent_form = ConsentForm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def consent_form_params
      params.require(:consent_form).permit(:participantname, :event_id)
    end
end
