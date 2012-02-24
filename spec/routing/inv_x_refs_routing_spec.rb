require "spec_helper"

describe InvXRefsController do
  describe "routing" do

    it "routes to #index" do
      get("/inv_x_refs").should route_to("inv_x_refs#index")
    end

    it "routes to #new" do
      get("/inv_x_refs/new").should route_to("inv_x_refs#new")
    end

    it "routes to #show" do
      get("/inv_x_refs/1").should route_to("inv_x_refs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/inv_x_refs/1/edit").should route_to("inv_x_refs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/inv_x_refs").should route_to("inv_x_refs#create")
    end

    it "routes to #update" do
      put("/inv_x_refs/1").should route_to("inv_x_refs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/inv_x_refs/1").should route_to("inv_x_refs#destroy", :id => "1")
    end

  end
end
