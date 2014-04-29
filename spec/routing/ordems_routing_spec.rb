require "spec_helper"

describe OrdemsController do
  describe "routing" do

    it "routes to #index" do
      get("/ordems").should route_to("ordems#index")
    end

    it "routes to #new" do
      get("/ordems/new").should route_to("ordems#new")
    end

    it "routes to #show" do
      get("/ordems/1").should route_to("ordems#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ordems/1/edit").should route_to("ordems#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ordems").should route_to("ordems#create")
    end

    it "routes to #update" do
      put("/ordems/1").should route_to("ordems#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ordems/1").should route_to("ordems#destroy", :id => "1")
    end

  end
end
