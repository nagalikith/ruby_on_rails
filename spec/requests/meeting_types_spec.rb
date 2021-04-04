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

RSpec.describe "/meeting_types", type: :request do
  # MeetingType. As you add validations to MeetingType, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      MeetingType.create! valid_attributes
      get meeting_types_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      meeting_type = MeetingType.create! valid_attributes
      get meeting_type_url(meeting_type)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_meeting_type_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      meeting_type = MeetingType.create! valid_attributes
      get edit_meeting_type_url(meeting_type)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new MeetingType" do
        expect {
          post meeting_types_url, params: { meeting_type: valid_attributes }
        }.to change(MeetingType, :count).by(1)
      end

      it "redirects to the created meeting_type" do
        post meeting_types_url, params: { meeting_type: valid_attributes }
        expect(response).to redirect_to(meeting_type_url(MeetingType.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new MeetingType" do
        expect {
          post meeting_types_url, params: { meeting_type: invalid_attributes }
        }.to change(MeetingType, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post meeting_types_url, params: { meeting_type: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested meeting_type" do
        meeting_type = MeetingType.create! valid_attributes
        patch meeting_type_url(meeting_type), params: { meeting_type: new_attributes }
        meeting_type.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the meeting_type" do
        meeting_type = MeetingType.create! valid_attributes
        patch meeting_type_url(meeting_type), params: { meeting_type: new_attributes }
        meeting_type.reload
        expect(response).to redirect_to(meeting_type_url(meeting_type))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        meeting_type = MeetingType.create! valid_attributes
        patch meeting_type_url(meeting_type), params: { meeting_type: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested meeting_type" do
      meeting_type = MeetingType.create! valid_attributes
      expect {
        delete meeting_type_url(meeting_type)
      }.to change(MeetingType, :count).by(-1)
    end

    it "redirects to the meeting_types list" do
      meeting_type = MeetingType.create! valid_attributes
      delete meeting_type_url(meeting_type)
      expect(response).to redirect_to(meeting_types_url)
    end
  end
end