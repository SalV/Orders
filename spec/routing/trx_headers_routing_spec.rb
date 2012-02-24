require "spec_helper"

describe TrxHeadersController do
  describe "routing" do

    it "routes to #index" do
      get("/trx_headers").should route_to("trx_headers#index")
    end

    it "routes to #new" do
      get("/trx_headers/new").should route_to("trx_headers#new")
    end

    it "routes to #show" do
      get("/trx_headers/1").should route_to("trx_headers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/trx_headers/1/edit").should route_to("trx_headers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/trx_headers").should route_to("trx_headers#create")
    end

    it "routes to #update" do
      put("/trx_headers/1").should route_to("trx_headers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/trx_headers/1").should route_to("trx_headers#destroy", :id => "1")
    end

  end
end
