require 'rails_helper'

RSpec.describe "Presencas", type: :request do
  describe "GET /presencas" do
    it "works! (now write some real specs)" do
      get presencas_path
      expect(response).to have_http_status(200)
    end
  end
end
