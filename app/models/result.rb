class Result < ActiveRecord::Base
  attr_accessible :respondent, :survey, :answer, :question

  belongs_to :survey
  belongs_to :question
  belongs_to :answer
  belongs_to :respondent, :class_name => "User", :foreign_key => "respondent_id"
end
