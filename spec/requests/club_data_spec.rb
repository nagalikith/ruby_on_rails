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

RSpec.describe "/club_data", type: :request do
  # ClubDatum. As you add validations to ClubDatum, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ClubDatum.create! valid_attributes
      get club_data_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      club_datum = ClubDatum.create! valid_attributes
      get club_datum_url(club_datum)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_club_datum_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      club_datum = ClubDatum.create! valid_attributes
      get edit_club_datum_url(club_datum)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ClubDatum" do
        expect {
          post club_data_url, params: { club_datum: valid_attributes }
        }.to change(ClubDatum, :count).by(1)
      end

      it "redirects to the created club_datum" do
        post club_data_url, params: { club_datum: valid_attributes }
        expect(response).to redirect_to(club_datum_url(ClubDatum.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ClubDatum" do
        expect {
          post club_data_url, params: { club_datum: invalid_attributes }
        }.to change(ClubDatum, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post club_data_url, params: { club_datum: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested club_datum" do
        club_datum = ClubDatum.create! valid_attributes
        patch club_datum_url(club_datum), params: { club_datum: new_attributes }
        club_datum.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the club_datum" do
        club_datum = ClubDatum.create! valid_attributes
        patch club_datum_url(club_datum), params: { club_datum: new_attributes }
        club_datum.reload
        expect(response).to redirect_to(club_datum_url(club_datum))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        club_datum = ClubDatum.create! valid_attributes
        patch club_datum_url(club_datum), params: { club_datum: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested club_datum" do
      club_datum = ClubDatum.create! valid_attributes
      expect {
        delete club_datum_url(club_datum)
      }.to change(ClubDatum, :count).by(-1)
    end

    it "redirects to the club_data list" do
      club_datum = ClubDatum.create! valid_attributes
      delete club_datum_url(club_datum)
      expect(response).to redirect_to(club_data_url)
    end
  end
end
