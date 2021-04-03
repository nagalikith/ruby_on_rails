 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/event_feedbacks", type: :request do
  # EventFeedback. As you add validations to EventFeedback, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      EventFeedback.create! valid_attributes
      get event_feedbacks_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      event_feedback = EventFeedback.create! valid_attributes
      get event_feedback_url(event_feedback)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_event_feedback_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      event_feedback = EventFeedback.create! valid_attributes
      get edit_event_feedback_url(event_feedback)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new EventFeedback" do
        expect {
          post event_feedbacks_url, params: { event_feedback: valid_attributes }
        }.to change(EventFeedback, :count).by(1)
      end

      it "redirects to the created event_feedback" do
        post event_feedbacks_url, params: { event_feedback: valid_attributes }
        expect(response).to redirect_to(event_feedback_url(EventFeedback.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new EventFeedback" do
        expect {
          post event_feedbacks_url, params: { event_feedback: invalid_attributes }
        }.to change(EventFeedback, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post event_feedbacks_url, params: { event_feedback: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested event_feedback" do
        event_feedback = EventFeedback.create! valid_attributes
        patch event_feedback_url(event_feedback), params: { event_feedback: new_attributes }
        event_feedback.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the event_feedback" do
        event_feedback = EventFeedback.create! valid_attributes
        patch event_feedback_url(event_feedback), params: { event_feedback: new_attributes }
        event_feedback.reload
        expect(response).to redirect_to(event_feedback_url(event_feedback))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        event_feedback = EventFeedback.create! valid_attributes
        patch event_feedback_url(event_feedback), params: { event_feedback: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested event_feedback" do
      event_feedback = EventFeedback.create! valid_attributes
      expect {
        delete event_feedback_url(event_feedback)
      }.to change(EventFeedback, :count).by(-1)
    end

    it "redirects to the event_feedbacks list" do
      event_feedback = EventFeedback.create! valid_attributes
      delete event_feedback_url(event_feedback)
      expect(response).to redirect_to(event_feedbacks_url)
    end
  end
end
