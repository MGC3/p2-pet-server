require 'rails_helper'

RSpec.describe "Weightlogs", type: :request do
  describe "GET /weightlogs" do
    it "works! (now write some real specs)" do
      get weightlogs_path
      expect(response).to have_http_status(200)
    end
  end
end
