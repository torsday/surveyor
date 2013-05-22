require 'spec_helper'

describe 'Answer' do
  let!(:answer)   { Answer.create(description: "Yes, they sure are, bob.")}

  context "with valid attributes" do
    it "should create an answer" do
      answer.should be_valid
    end
  end
end
