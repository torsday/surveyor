require 'spec_helper'

describe 'Answer' do
  let :answer do
    build :answer
  end
  context "with valid attributes" do
    it "should create an answer" do
      answer.should be_valid
    end
  end
end
