class EventFeedbacksController < ApplicationController
  before_action :set_event_feedback, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token
  # GET /event_feedbacks
  def index
    if current_user.manager
      @event_feedbacks = EventFeedback.all
    else
      @event_feedbacks = EventFeedback.all.where(club_id: current_user.club_id)
    end
  end

  # GET /event_feedbacks/1
  def show
  end

  # GET /event_feedbacks/new
  def new
    render layout: false
  end

  # GET /event_feedbacks/1/edit
  def edit
    render layout: false
  end

  # POST /event_feedbacks
  def create
    @event_feedback = EventFeedback.new(event_feedback_params)

    if @event_feedback.save
      if current_user.manager
        @event_feedbacks = EventFeedback.all
      else
        @event_feedbacks = EventFeedback.all.where(club_id: current_user.club_id)
      end
      render :index
    else
      render 'new_feedback_failure'
    end
  end

  # PATCH/PUT /event_feedbacks/1
  def update
    if @event_feedback.update(event_feedback_params)
      redirect_to @event_feedback, notice: 'Event feedback was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /event_feedbacks/1
  def destroy
    @event_feedback.destroy
    redirect_to event_feedbacks_url, notice: 'Event feedback was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_feedback
      @event_feedback = EventFeedback.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_feedback_params
      params.require(:event_feedback).permit(:comment, :event_id, :pdf)
    end
end
