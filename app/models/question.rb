class Question < ActiveRecord::Base
  attr_accessible :description, :survey

  belongs_to :survey
  has_and_belongs_to_many :answers
end
