require 'rails_helper'

RSpec.describe RegistrationsController, :type => :controller do

  describe "GET profile" do
    it "returns http success" do
      get :profile
      expect(response).to be_success
    end
  end

  describe "GET sign_up_params" do
    it "returns http success" do
      get :sign_up_params
      expect(response).to be_success
    end
  end

  describe "GET account_update_params" do
    it "returns http success" do
      get :account_update_params
      expect(response).to be_success
    end
  end

end
