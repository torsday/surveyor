require 'spec_helper'

describe "User" do

  let :user do 
    build :user
  end

  context "with valid attributes" do
    it "should create a user" do
      user.should be_valid
    end
  end
end
