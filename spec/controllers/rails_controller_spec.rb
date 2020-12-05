require 'rails_helper'

RSpec.describe RailsController, type: :controller do

  describe "GET #generate" do
    it "returns http success" do
      get :generate
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #controller" do
    it "returns http success" do
      get :controller
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #Calendario" do
    it "returns http success" do
      get :Calendario
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #paginaCalendario" do
    it "returns http success" do
      get :paginaCalendario
      expect(response).to have_http_status(:success)
    end
  end

end
