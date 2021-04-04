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

RSpec.describe "/prospective_donors", type: :request do
  # ProspectiveDonor. As you add validations to ProspectiveDonor, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ProspectiveDonor.create! valid_attributes
      get prospective_donors_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      prospective_donor = ProspectiveDonor.create! valid_attributes
      get prospective_donor_url(prospective_donor)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_prospective_donor_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      prospective_donor = ProspectiveDonor.create! valid_attributes
      get edit_prospective_donor_url(prospective_donor)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ProspectiveDonor" do
        expect {
          post prospective_donors_url, params: { prospective_donor: valid_attributes }
        }.to change(ProspectiveDonor, :count).by(1)
      end

      it "redirects to the created prospective_donor" do
        post prospective_donors_url, params: { prospective_donor: valid_attributes }
        expect(response).to redirect_to(prospective_donor_url(ProspectiveDonor.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ProspectiveDonor" do
        expect {
          post prospective_donors_url, params: { prospective_donor: invalid_attributes }
        }.to change(ProspectiveDonor, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post prospective_donors_url, params: { prospective_donor: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested prospective_donor" do
        prospective_donor = ProspectiveDonor.create! valid_attributes
        patch prospective_donor_url(prospective_donor), params: { prospective_donor: new_attributes }
        prospective_donor.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the prospective_donor" do
        prospective_donor = ProspectiveDonor.create! valid_attributes
        patch prospective_donor_url(prospective_donor), params: { prospective_donor: new_attributes }
        prospective_donor.reload
        expect(response).to redirect_to(prospective_donor_url(prospective_donor))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        prospective_donor = ProspectiveDonor.create! valid_attributes
        patch prospective_donor_url(prospective_donor), params: { prospective_donor: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested prospective_donor" do
      prospective_donor = ProspectiveDonor.create! valid_attributes
      expect {
        delete prospective_donor_url(prospective_donor)
      }.to change(ProspectiveDonor, :count).by(-1)
    end

    it "redirects to the prospective_donors list" do
      prospective_donor = ProspectiveDonor.create! valid_attributes
      delete prospective_donor_url(prospective_donor)
      expect(response).to redirect_to(prospective_donors_url)
    end
  end
end