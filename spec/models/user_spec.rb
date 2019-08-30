require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with attributes" do
    expect(User.new({ email: 'user@mail.com', password: 'password'})).to be_valid
  end

  it "is not valid without a email" do
    expect(User.new({ password: 'password'})).to be_invalid
  end
  
  it "is not valid without a password" do
    expect(User.new({ email: 'user@mail.com'})).to be_invalid
  end
end
