require 'rails_helper'

RSpec.describe "Atividades", type: :request do
  describe "GET /atividades" do
    it "works! (now write some real specs)" do
      get atividades_path
      expect(response).to have_http_status(200)
    end
  end
end
