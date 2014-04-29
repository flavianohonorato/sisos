require "spec_helper"

describe OsController do
  describe "routing" do

    it "routes to #index" do
      get("/os").should route_to("os#index")
    end

    it "routes to #new" do
      get("/os/new").should route_to("os#new")
    end

    it "routes to #show" do
      get("/os/1").should route_to("os#show", :id => "1")
    end

    it "routes to #edit" do
      get("/os/1/edit").should route_to("os#edit", :id => "1")
    end

    it "routes to #create" do
      post("/os").should route_to("os#create")
    end

    it "routes to #update" do
      put("/os/1").should route_to("os#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/os/1").should route_to("os#destroy", :id => "1")
    end

  end
end
