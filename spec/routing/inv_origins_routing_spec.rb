require "spec_helper"

describe InvOriginsController do
  describe "routing" do

    it "routes to #index" do
      get("/inv_origins").should route_to("inv_origins#index")
    end

    it "routes to #new" do
      get("/inv_origins/new").should route_to("inv_origins#new")
    end

    it "routes to #show" do
      get("/inv_origins/1").should route_to("inv_origins#show", :id => "1")
    end

    it "routes to #edit" do
      get("/inv_origins/1/edit").should route_to("inv_origins#edit", :id => "1")
    end

    it "routes to #create" do
      post("/inv_origins").should route_to("inv_origins#create")
    end

    it "routes to #update" do
      put("/inv_origins/1").should route_to("inv_origins#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/inv_origins/1").should route_to("inv_origins#destroy", :id => "1")
    end

  end
end
