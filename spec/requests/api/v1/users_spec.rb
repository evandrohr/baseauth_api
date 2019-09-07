require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:auth_token) {
    User.create!(email: 'user@mail.com', password: '123123123', password_confirmation: '123123123' )
    post "/api/v1/authenticate", headers: { 'Content-Type': 'application/json' }, 
      params: {email: 'user@mail.com', password: '123123123'}.to_json
    response.parsed_body["auth_token"]
  }

  let(:users_list) {
    User.create!(name: 'User01', email: 'user01@mail.com', password: '123123123', password_confirmation: '123123123' )
    User.create!(name: 'User02', email: 'user02@mail.com', password: '123123123', password_confirmation: '123123123' )
    User.create!(name: 'User03', email: 'user03@mail.com', password: '123123123', password_confirmation: '123123123' )
    User.create!(name: 'User04', email: 'user04@mail.com', password: '123123123', password_confirmation: '123123123' )
    User.create!(name: 'User05', email: 'user05@mail.com', password: '123123123', password_confirmation: '123123123' )
    User.create!(name: 'User06', email: 'user06@mail.com', password: '123123123', password_confirmation: '123123123' )
    User.create!(name: 'User07', email: 'user07@mail.com', password: '123123123', password_confirmation: '123123123' )
    User.create!(name: 'User08', email: 'user08@mail.com', password: '123123123', password_confirmation: '123123123' )
    User.create!(name: 'User09', email: 'user09@mail.com', password: '123123123', password_confirmation: '123123123' )
    User.create!(name: 'User10', email: 'user10@mail.com', password: '123123123', password_confirmation: '123123123' )
  }

  describe "GET /api/v1/users.json" do
    it "works! (now write some real specs)" do
      get api_v1_users_path + '.json', headers: {'Authorization': auth_token, 'Content-Type': 'application/json'}
      expect(response).to have_http_status(200)
    end
  end

  describe ""

end
