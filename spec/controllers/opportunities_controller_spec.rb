require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe OpportunitiesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Opportunity. As you add validations to Opportunity, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    {project_name: 'FULLERTON ROAD GRADE SEPARATION State Project No. TCIF 6303(042)', project_owner: 'Alameda Corridor-East Construction Authority', union_contract: false, city: 'City of Industry', contact_name: '', contact_phone: 6198143703, contact_fax: 6198143770, contact_email: 'litlmoz@gmail.com', bid_date: '2017-03-29 23:59:00 UTC', trades_solicited: "136# TRACK , AC PAVING , AGGREGATES, BOOSTER PUMP, CIDH, CONCRETE SUPPLY, CONC. BARRIER, CONC. FLATWORK, CONC., PAVEMENT, DEMO, DEWATERING, FENCE/RAILING, FIBER OPTIC HAZMAT DISPOSAL HDPE, LANDSCAPE & IRRIGATION, MANHOLES, NOISE/VIB. MONITORING, PRECAST RCB, RAIL ELECTRIC, RCP, REINFORCING STEEL, ROCK BLANKET, SAWCUT/CURING, SHEET PILE  SOLDIER PILE, STEEL CASING, STEEL PILE, STRIPING, STRUCTURAL STEEL, SURVEYING, TEMP. MSE WALL, TRAFFIC CONTROL, TRUCKING, T-WALL, SIGNS, V-DITCH/SLOPE PAV., WATER POLLUTION CONTROL', project_description: 'Equal Opportunity Employer: Opportunities for quotations will be needed throughout the life of the project. Terms and conditions should be made part of the quotations. 100% performance and payment bonds may be required for the full amount of the subcontract price. Pulice Construction, Inc. will assist with obtaining bonding, lines of credit, insurance by encouraging the SBE to work with state supportive services programs. All responsive subcontractors must possess a current contractor’s license, insurance, and worker’s compensation coverage complying with Pulice Construction, Inc. requirements and will be required to sign the standard Subcontract Agreement. Pulice Construction, Inc. will analyze and consider each SBE quote received, including those that are broken down into economically feasible units to facilitate bidding. Quotes must be valid for the same period of time as specified by Owner for contract award.", bid_instructions: "Any conditions or exceptions in Subcontractor’s quote are expressly rejected unless accepted in writing.
    Plans and Specifications are available online at www.pulice.sharefile.com. Send SBE certification (DGS) with quote. Non SBE Subs/Suppliers: Indicate 2nd tier SBE participation offered on your quotation as it will be evaluated with your price. Pulice Construction, Inc. is committed to ensuring that SBE’s have the maximum opportunity to successfully perform on this project, and to making good faith efforts in achieving the SBE goal.", project_url: 'https://www.planetbids.com/portal/portal.cfm?CompanyID=15588'}
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # OpportunitiesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all opportunities as @opportunities" do
      opportunity = Opportunity.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:opportunities)).to eq([opportunity])
    end
  end

  describe "GET #show" do
    it "assigns the requested opportunity as @opportunity" do
      opportunity = Opportunity.create! valid_attributes
      get :show, {:id => opportunity.to_param}, valid_session
      expect(assigns(:opportunity)).to eq(opportunity)
    end
  end

  describe "GET #new" do
    it "assigns a new opportunity as @opportunity" do
      get :new, {}, valid_session
      expect(assigns(:opportunity)).to be_a_new(Opportunity)
    end
  end

  describe "GET #edit" do
    it "assigns the requested opportunity as @opportunity" do
      opportunity = Opportunity.create! valid_attributes
      get :edit, {:id => opportunity.to_param}, valid_session
      expect(assigns(:opportunity)).to eq(opportunity)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Opportunity" do
        expect {
          post :create, {:opportunity => valid_attributes}, valid_session
        }.to change(Opportunity, :count).by(1)
      end

      it "assigns a newly created opportunity as @opportunity" do
        post :create, {:opportunity => valid_attributes}, valid_session
        expect(assigns(:opportunity)).to be_a(Opportunity)
        expect(assigns(:opportunity)).to be_persisted
      end

      it "redirects to the created opportunity" do
        post :create, {:opportunity => valid_attributes}, valid_session
        expect(response).to redirect_to(Opportunity.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved opportunity as @opportunity" do
        post :create, {:opportunity => invalid_attributes}, valid_session
        expect(assigns(:opportunity)).to be_a_new(Opportunity)
      end

      it "re-renders the 'new' template" do
        post :create, {:opportunity => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested opportunity" do
        opportunity = Opportunity.create! valid_attributes
        put :update, {:id => opportunity.to_param, :opportunity => new_attributes}, valid_session
        opportunity.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested opportunity as @opportunity" do
        opportunity = Opportunity.create! valid_attributes
        put :update, {:id => opportunity.to_param, :opportunity => valid_attributes}, valid_session
        expect(assigns(:opportunity)).to eq(opportunity)
      end

      it "redirects to the opportunity" do
        opportunity = Opportunity.create! valid_attributes
        put :update, {:id => opportunity.to_param, :opportunity => valid_attributes}, valid_session
        expect(response).to redirect_to(opportunity)
      end
    end

    context "with invalid params" do
      it "assigns the opportunity as @opportunity" do
        opportunity = Opportunity.create! valid_attributes
        put :update, {:id => opportunity.to_param, :opportunity => invalid_attributes}, valid_session
        expect(assigns(:opportunity)).to eq(opportunity)
      end

      it "re-renders the 'edit' template" do
        opportunity = Opportunity.create! valid_attributes
        put :update, {:id => opportunity.to_param, :opportunity => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested opportunity" do
      opportunity = Opportunity.create! valid_attributes
      expect {
        delete :destroy, {:id => opportunity.to_param}, valid_session
      }.to change(Opportunity, :count).by(-1)
    end

    it "redirects to the opportunities list" do
      opportunity = Opportunity.create! valid_attributes
      delete :destroy, {:id => opportunity.to_param}, valid_session
      expect(response).to redirect_to(opportunities_url)
    end
  end

end
