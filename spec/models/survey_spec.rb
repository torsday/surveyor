require 'spec_helper'

describe 'Survey' do
  let!(:user) { User.create(email:'c@c.com', password:'123456') }
  let!(:survey) { Survey.create(title:'across the west', author:user) }
  context "valid input" do
    it "should create a survey" do
      survey.should be_valid
    end
  end
end
