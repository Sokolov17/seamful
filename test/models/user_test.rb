require 'rails_helper'

RSpec.describe User, type: :model do
  let(:valid_attributes) do
    {
      first_name: "Gregory",
      last_name: "Swartz",
      street_name: "15 Broadway",
      city_name: "New York",
      zipcode: "10001",
      state: "NY",
      credit_card_num: "1234567890123456",
      phone_num: "0123456789",
      email: "gs@aol.com",
      password_digest: "password"
    }
  end

  let(:missing_email) { valid_attributes.except(:email) }
  let(:missing_password_digest) { valid_attributes.except(:password_digest) }
  let(:missing_first_name) { valid_attributes.except(:first_name) }


  it "is valid when expected" do
    expect(User.new(valid_attributes)).to be_valid
  end

  it "is invalid without email" do
    expect(User.new(missing_email)).to be_invalid
  end

  it "is invalid without a password" do
    expect(User.new(missing_password_digest)).to be_invalid
  end

  it "is invalid without a first name" do
    expect(User.new(missing_first_name)).to be_invalid
  end


end
