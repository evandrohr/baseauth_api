require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:auth_token) {
    User.create!(email: 'user@mail.com', password: '123123', password_confirmation: '123123' )
    post "/api/v1/authenticate", headers: { 'Content-Type': 'application/json' }, 
      params: {email: 'user@mail.com', password: '123123'}.to_json
    response.parsed_body["auth_token"]
  }

  describe "GET /api/v1/users.json" do
    it "works! (now write some real specs)" do
      get api_v1_users_path + '.json', headers: {'Authorization': auth_token, 'Content-Type': 'application/json'}
      expect(response).to have_http_status(200)
    end
  end
end
