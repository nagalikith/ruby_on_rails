class EventFeedbacksController < ApplicationController
  before_action :set_event_feedback, only: [:show, :edit, :update, :destroy]

  # GET /event_feedbacks
  def index
    @event_feedbacks = EventFeedback.all
  end

  # GET /event_feedbacks/1
  def show
  end

  # GET /event_feedbacks/new
  def new
    @event_feedback = EventFeedback.new
  end

  # GET /event_feedbacks/1/edit
  def edit
  end

  # POST /event_feedbacks
  def create
    @event_feedback = EventFeedback.new(event_feedback_params)

    if @event_feedback.save
      redirect_to @event_feedback, notice: 'Event feedback was successfully created.'
    else
      render :new
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
      params.require(:event_feedback).permit(:comment)
    end
end
