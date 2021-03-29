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

RSpec.describe "/volunteers", type: :request do
  # Volunteer. As you add validations to Volunteer, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Volunteer.create! valid_attributes
      get volunteers_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      volunteer = Volunteer.create! valid_attributes
      get volunteer_url(volunteer)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_volunteer_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      volunteer = Volunteer.create! valid_attributes
      get edit_volunteer_url(volunteer)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Volunteer" do
        expect {
          post volunteers_url, params: { volunteer: valid_attributes }
        }.to change(Volunteer, :count).by(1)
      end

      it "redirects to the created volunteer" do
        post volunteers_url, params: { volunteer: valid_attributes }
        expect(response).to redirect_to(volunteer_url(Volunteer.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Volunteer" do
        expect {
          post volunteers_url, params: { volunteer: invalid_attributes }
        }.to change(Volunteer, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post volunteers_url, params: { volunteer: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested volunteer" do
        volunteer = Volunteer.create! valid_attributes
        patch volunteer_url(volunteer), params: { volunteer: new_attributes }
        volunteer.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the volunteer" do
        volunteer = Volunteer.create! valid_attributes
        patch volunteer_url(volunteer), params: { volunteer: new_attributes }
        volunteer.reload
        expect(response).to redirect_to(volunteer_url(volunteer))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        volunteer = Volunteer.create! valid_attributes
        patch volunteer_url(volunteer), params: { volunteer: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested volunteer" do
      volunteer = Volunteer.create! valid_attributes
      expect {
        delete volunteer_url(volunteer)
      }.to change(Volunteer, :count).by(-1)
    end

    it "redirects to the volunteers list" do
      volunteer = Volunteer.create! valid_attributes
      delete volunteer_url(volunteer)
      expect(response).to redirect_to(volunteers_url)
    end
  end
end
