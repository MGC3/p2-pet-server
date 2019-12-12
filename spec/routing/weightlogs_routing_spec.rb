require "rails_helper"

RSpec.describe WeightlogsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/weightlogs").to route_to("weightlogs#index")
    end


    it "routes to #show" do
      expect(:get => "/weightlogs/1").to route_to("weightlogs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/weightlogs").to route_to("weightlogs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/weightlogs/1").to route_to("weightlogs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/weightlogs/1").to route_to("weightlogs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/weightlogs/1").to route_to("weightlogs#destroy", :id => "1")
    end

  end
end
