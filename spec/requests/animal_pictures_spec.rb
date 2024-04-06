require 'rails_helper'

RSpec.describe "AnimalPictures", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/animal_pictures/index"
      expect(response).to have_http_status(:success)
    end
  end

end
