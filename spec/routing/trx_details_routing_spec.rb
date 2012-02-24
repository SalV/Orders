require "spec_helper"

describe TrxDetailsController do
  describe "routing" do

    it "routes to #index" do
      get("/trx_details").should route_to("trx_details#index")
    end

    it "routes to #new" do
      get("/trx_details/new").should route_to("trx_details#new")
    end

    it "routes to #show" do
      get("/trx_details/1").should route_to("trx_details#show", :id => "1")
    end

    it "routes to #edit" do
      get("/trx_details/1/edit").should route_to("trx_details#edit", :id => "1")
    end

    it "routes to #create" do
      post("/trx_details").should route_to("trx_details#create")
    end

    it "routes to #update" do
      put("/trx_details/1").should route_to("trx_details#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/trx_details/1").should route_to("trx_details#destroy", :id => "1")
    end

  end
end
