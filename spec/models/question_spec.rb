require 'spec_helper'

describe 'Question' do
  let :question do
    build :question
  end
  context "valid input" do
    it "should create a question" do
      question.should be_valid
    end
  end
end
