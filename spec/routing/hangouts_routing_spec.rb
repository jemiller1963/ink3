require "rails_helper"

RSpec.describe HangoutsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/hangouts").to route_to("hangouts#index")
    end

    it "routes to #new" do
      expect(:get => "/hangouts/new").to route_to("hangouts#new")
    end

    it "routes to #show" do
      expect(:get => "/hangouts/1").to route_to("hangouts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/hangouts/1/edit").to route_to("hangouts#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/hangouts").to route_to("hangouts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/hangouts/1").to route_to("hangouts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/hangouts/1").to route_to("hangouts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/hangouts/1").to route_to("hangouts#destroy", :id => "1")
    end
  end
end
