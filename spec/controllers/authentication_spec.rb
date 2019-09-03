require 'rails_helper'

describe AuthenticationController, type: :request do
  let!(:user) { User.create!(email: 'user@mail.com', password: '123123', password_confirmation: '123123' ) }

  it "should return an error with invalid credentials" do
    post "/authenticate", headers: { 'Content-Type': 'application/json' },
      params: {email: 'another_user@mail.com', password: 'another_pass'}.to_json 
    expect(response.parsed_body["error"]["user_authentication"][0]).to eq("invalid credentials")
  end

  it "should receive a valid hash with correct credentials" do
    user = User.create!(email: 'user@mail.com', password: '123123', password_confirmation: '123123' )
    post "/authenticate", headers: { 'Content-Type': 'application/json' }, 
      params: {email: 'user@mail.com', password: '123123'}.to_json 
      expect(response.parsed_body["auth_token"]).not_to be_empty
  end

end