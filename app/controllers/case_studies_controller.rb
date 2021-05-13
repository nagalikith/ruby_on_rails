class CaseStudiesController < ApplicationController
  before_action :set_case_study, only: [:show, :edit, :update, :destroy]

  helper_method :get_club

  # GET /case_studies
  def index
    if current_user.manager
      @case_studies = CaseStudy.all
    else
      @case_studies = CaseStudy.where(club_id: current_user.club_id)
    end
  
  end

  # GET /case_studies/1
  def show
    @events = Event.all.where(club_id: get_club(@case_study).id)
  end

  # GET /case_studies/new
  def new
    @case_study = CaseStudy.new
  end

  # GET /case_studies/1/edit
  def edit
  end

  # POST /case_studies
  def create
    @case_study = CaseStudy.new(case_study_params)

    if @case_study.save
      redirect_to @case_study, notice: 'Case study was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /case_studies/1
  def update
    if @case_study.update(case_study_params)
      redirect_to @case_study, notice: 'Case study was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /case_studies/1
  def destroy
    @case_study.destroy
    redirect_to case_studies_url, notice: 'Case study was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_study
      @case_study = CaseStudy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def case_study_params
      params.require(:case_study).permit(:comment, :date, :participant, :event)
    end

    def get_club(case_study)
      @club = Club.find(case_study.club_id)
    end

end
