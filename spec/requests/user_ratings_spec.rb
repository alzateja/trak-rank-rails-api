require 'rails_helper'

RSpec.describe "UserRatings", type: :request do
  describe "GET /user_ratings" do
    it "works! (now write some real specs)" do
      get user_ratings_path
      expect(response).to have_http_status(200)
    end
  end
end
