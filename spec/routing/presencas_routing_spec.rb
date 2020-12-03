require "rails_helper"

RSpec.describe PresencasController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/presencas").to route_to("presencas#index")
    end

    it "routes to #new" do
      expect(:get => "/presencas/new").to route_to("presencas#new")
    end

    it "routes to #show" do
      expect(:get => "/presencas/1").to route_to("presencas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/presencas/1/edit").to route_to("presencas#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/presencas").to route_to("presencas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/presencas/1").to route_to("presencas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/presencas/1").to route_to("presencas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/presencas/1").to route_to("presencas#destroy", :id => "1")
    end
  end
end
