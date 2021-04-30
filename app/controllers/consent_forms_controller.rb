class ConsentFormsController < ApplicationController
  before_action :get_event
  before_action :set_consent_form, only: [:show, :edit, :update, :destroy]

  def index
    @consent_forms = @event.consent_form
  end

  # GET /consent_forms/1
  def show
  end

  # GET /consent_forms/new
  def new
    @consent_forms = @event.consent_form.build
  end

  # GET /consent_forms/1/edit
  def edit
  end

  # POST /consent_forms
  def create
    @consent_form = @event.consent_form.build(consent_form_params)

    respond_to do |format|
    if @consent_form.save
      format.html { redirect_to event_consent_forms_path, notice: 'Consent form was successfully created.'}
      #This allows the path to be followed when a consent form is being created.
      format.json { render :show, status: :created, location: @consent_form }
      #Ensures an image can be uploaded
    else
      format.html { render :new }
      format.json { render json: @consent_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consent_forms/1
  def update
    respond_to do |format|
    if @consent_form.update(consent_form_params)
      format.html { redirect_to event_consent_forms_path(@event), notice: 'Consent form was successfully updated.' }
      format.json { render :'update_success', status: :ok, location: @consent_form }
    else
      format.html { render :'update_failure'}
      format.json { render json: @consent_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consent_forms/1
  def destroy
    @consent_form.destroy
    respond_to do |format|
      format.html { redirect_to event_consent_forms_path(@event), notice: 'Consent form was successfully destroyed.'}
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consent_form
      @consent_form = ConsentForm.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def consent_form_params
      params.require(:consent_form).permit(:participantname, :event_id, :image)
    end

  private
    def get_event
      @event = Event.find(params[:event_id])
    end
  
  private
    def set_consent_form
      @consent_form = @event.consent_form.find(params[:id])
    end
end
