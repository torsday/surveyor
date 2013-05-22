require 'spec_helper'

describe "User" do
  let!(:user) { User.create(email: "bob@example.com", password: "password") }

  context "with valid attributes" do
    it "should create a user" do
      user.should be_valid
    end
  end
end
