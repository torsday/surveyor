require 'spec_helper'

describe "Result" do
  let :result do
    build :result
  end

  context "valid input" do
    it "should create a result" do
      result.should be_valid
    end
  end
end
