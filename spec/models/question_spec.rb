require 'spec_helper'

describe 'Question' do
  let!(:user) { User.create(email: "bob@example.com", password: "password") }
  let!(:survey) { Survey.create(title:'across the west', author:user) }
  let!(:question) { Question.create(survey: survey, description:'railroads: rad?') }
  context "valid input" do
    it "should create a question" do
      question.should be_valid
    end
  end
end
