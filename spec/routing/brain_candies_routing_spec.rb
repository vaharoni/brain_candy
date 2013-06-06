require "spec_helper"

describe BrainCandiesController do
  describe "routing" do

    it "routes to #index" do
      get("/brain_candies").should route_to("brain_candies#index")
    end

    it "routes to #new" do
      get("/brain_candies/new").should route_to("brain_candies#new")
    end

    it "routes to #show" do
      get("/brain_candies/1").should route_to("brain_candies#show", :id => "1")
    end

    it "routes to #edit" do
      get("/brain_candies/1/edit").should route_to("brain_candies#edit", :id => "1")
    end

    it "routes to #create" do
      post("/brain_candies").should route_to("brain_candies#create")
    end

    it "routes to #update" do
      put("/brain_candies/1").should route_to("brain_candies#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/brain_candies/1").should route_to("brain_candies#destroy", :id => "1")
    end

  end
end
