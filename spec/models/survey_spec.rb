require 'spec_helper'

describe 'Survey' do
  let :survey do
    build :survey
  end

  context "valid input" do
    it "should create a survey" do
      survey.should be_valid
    end
  end
end
